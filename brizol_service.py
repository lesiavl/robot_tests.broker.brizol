#!/usr/bin/python
# -*- coding: utf-8 -*-

from datetime import datetime
from iso8601 import parse_date
from pytz import timezone
import os
import urllib
import json


def convert_time(date):
    date = datetime.strptime(date, "%d/%m/%Y %H:%M:%S")
    return timezone('Europe/Kiev').localize(date).strftime('%Y-%m-%dT%H:%M:%S.%f%z')


def convert_datetime_to_brizol_format(isodate):
    iso_dt = parse_date(isodate)
    day_string = iso_dt.strftime("%d/%m/%Y %H:%M")
    return day_string


def convert_string_from_dict_brizol(string):
    return {
        u"грн": u"UAH",
        u"True": u"1",
        u"False": u"0",
        u'Код CAV': u'CAV',
        u'з урахуванням ПДВ': True,
        u'без урахуванням ПДВ': False,
        u'очiкування пропозицiй': u'active.tendering',
        u'перiод уточнень': u'active.enquires',
        u'аукцiон': u'active.auction',
        u'квалiфiкацiя переможця': u'active.qualification',
        u'торги не відбулися': u'unsuccessful',
        u'продаж завершений': u'complete',
        u'вiдмiнена': u'cancelled',
        u'торги були відмінені.': u'active',
        u'Юридична Інформація Майданчиків': u'x_dgfPlatformLegalDetails',
        u'Презентація': u'x_presentation',
        u'Договір про нерозголошення (NDA)': u'x_nda',
        u'Публічний Паспорт Активу': u'x_dgfPublicAssetCertificate',
        u'Технічні специфікації': u'x_technicalSpecifications',
        u'Паспорт торгів': u'x_tenderNotice',
        u'Повідомлення про аукціон': u'notice',
        u'Ілюстрації': u'illustration',
        u'Критерії оцінки': u'evaluationCriteria',
        u'Пояснення до питань заданих учасниками': u'clarifications',
        u'Інформація про учасників': u'bidders',
        u'прав вимоги за кредитами': u'dgfFinancialAssets',
        u'майна банків': u'dgfOtherAssets',
        u'очікується протокол': u'pending.verification',
        u'очікується кінець кваліфікації': u'pending.waiting',
        u'очікується підписання договору': u'pending.payment',
        u'переможець': u'active',
        u'рiшення скасованно': u'cancelled',
        u'дисквалiфiковано': u'unsuccessful',
    }.get(string, string)


def adapt_procuringEntity(role_name, tender_data):
    if role_name == 'tender_owner':
        tender_data['data']['procuringEntity']['name'] = u"Ольмек"
        if tender_data['data']['items'][0]['deliveryAddress']['region'] == u"місто Київ":
            tender_data['data']['items'][0]['deliveryAddress']['region'] = u"Київ"
    return tender_data


def adapt_view_data(value, field_name):
    if field_name == 'value.amount':
        value = float(value.split(' ')[0])
    elif field_name == 'value.currency':
        value = value.split(' ')[1]
    elif field_name == 'value.valueAddedTaxIncluded':
        value = ' '.join(value.split(' ')[2:])
    elif field_name == 'minimalStep.amount':
        value = float(value.split(' ')[0])
    elif field_name == 'tenderAttempts':
        value = int(value)
    elif 'unit.name' in field_name:
        value = value.split(' ')[1]
    elif 'quantity' in field_name:
        value = float(value.split(' ')[0])
    elif 'questions' in field_name and '.date' in field_name:
        value = convert_time(value.split(' - ')[0])
    elif field_name == 'dgfDecisionDate':
        return value
    elif 'Date' in field_name:
        value = convert_time(value)
    return convert_string_from_dict_brizol(value)


def adapt_view_item_data(value, field_name):
    if 'unit.name' in field_name:
        value = ' '.join(value.split(' ')[1:])
    elif 'quantity' in field_name:
        value = float(value.split(' ')[0])
    return convert_string_from_dict_brizol(value)


def get_upload_file_path():
    return os.path.join(os.getcwd(), 'src/robot_tests.broker.brizol/testFileForUpload.txt')


def brizol_download_file(url, file_name, output_dir):
    urllib.urlretrieve(url, ('{}/{}'.format(output_dir, file_name)))


def get_award_amount(internal_id, award_index):
    r = urllib.urlopen('https://lb.api-sandbox.ea.openprocurement.org/api/2.4/auctions/{}'.format(internal_id)).read()
    auction = json.loads(r)
    return auction['data']['awards'][int(award_index)]["value"]['amount']
