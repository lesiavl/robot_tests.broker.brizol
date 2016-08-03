*** Settings ***
Library  openprocurement_client_helper.py


*** Keywords ***
Завантажити документ
  [Arguments]  ${username}  ${filepath}  ${tender_uaid}
  Fail  Дане ключове слово не реалізовано
  [return]   ${reply}


Отримати документ
  [Arguments]  ${username}  ${tender_uaid}  ${url}
  Fail  Дане ключове слово не реалізовано
  [return]   ${contents}  ${filename}


Отримати посилання на аукціон для глядача
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}=${Empty}
  Fail  Дане ключове слово не реалізовано
  [return]  ${auctionUrl}

##############################################################################
#             Tender operations
##############################################################################

Підготувати дані для оголошення тендера
  [Documentation]  Це слово використовується в майданчиків, тому потрібно, щоб воно було і тут
  [Arguments]  ${username}  ${tender_data}
  Fail  Дане ключове слово не реалізовано
  [return]  ${tender_data}


Створити тендер
  [Arguments]  ${username}  ${tender_data}
  Fail  Дане ключове слово не реалізовано
  [return]  ${tender.data.tenderID}


Пошук тендера по ідентифікатору
  [Arguments]  ${username}  ${tender_uaid}
  Fail  Дане ключове слово не реалізовано
  [return]   ${tender}


Оновити сторінку з тендером
  [Arguments]  ${username}  ${tender_uaid}
  Fail  Дане ключове слово не реалізовано


Отримати інформацію із тендера
  [Arguments]  ${username}  ${tender_uaid}  ${field_name}
  Fail  Дане ключове слово не реалізовано


Внести зміни в тендер
  [Arguments]  ${username}  ${tender_uaid}  ${fieldname}  ${fieldvalue}
  Fail  Дане ключове слово не реалізовано


##############################################################################
#             Item operations
##############################################################################

Додати предмет закупівлі
  [Arguments]  ${username}  ${tender_uaid}  ${item}
  Fail  Дане ключове слово не реалізовано


Отримати інформацію із предмету
  [Arguments]  ${username}  ${tender_uaid}  ${item_id}  ${field_name}
  Fail  Дане ключове слово не реалізовано


Видалити предмет закупівлі
  [Arguments]  ${username}  ${tender_uaid}  ${item_id}  ${lot_id}=${Empty}
  Fail  Дане ключове слово не реалізовано

##############################################################################
#             Lot operations
##############################################################################

Створити лот
  [Arguments]  ${username}  ${tender_uaid}  ${lot}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply}


Отримати інформацію із лоту
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}  ${field_name}
  Fail  Дане ключове слово не реалізовано


Змінити лот
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}   ${fieldname}  ${fieldvalue}
  Fail  Дане ключове слово не реалізовано

  [return]  ${reply}


Додати предмет закупівлі в лот
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}  ${item}
  Fail  Дане ключове слово не реалізовано



Завантажити документ в лот
  [Arguments]  ${username}  ${filepath}  ${tender_uaid}  ${lot_id}
  Fail  Дане ключове слово не реалізовано
  [return]   ${reply}


Видалити лот
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply}


Скасувати лот
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}  ${cancellation_reason}  ${document}  ${new_description}
  Fail  Дане ключове слово не реалізовано


##############################################################################
#             Feature operations
##############################################################################

Додати неціновий показник на тендер
  [Arguments]  ${username}  ${tender_uaid}  ${feature}
  Fail  Дане ключове слово не реалізовано


Додати неціновий показник на предмет
  [Arguments]  ${username}  ${tender_uaid}  ${feature}  ${item_id}
  Fail  Дане ключове слово не реалізовано


Додати неціновий показник на лот
  [Arguments]  ${username}  ${tender_uaid}  ${feature}  ${lot_id}
  Fail  Дане ключове слово не реалізовано


Отримати інформацію із нецінового показника
  [Arguments]  ${username}  ${tender_uaid}  ${feature_id}  ${field_name}
  Fail  Дане ключове слово не реалізовано


Видалити неціновий показник
  [Arguments]  ${username}  ${tender_uaid}  ${feature_id}  ${obj_id}=${Empty}
  Fail  Дане ключове слово не реалізовано

##############################################################################
#             Questions
##############################################################################

Задати запитання на предмет
  [Arguments]  ${username}  ${tender_uaid}  ${item_id}  ${question}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply}


Задати запитання на лот
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}  ${question}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply}


Задати запитання на тендер
  [Arguments]  ${username}  ${tender_uaid}  ${question}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply}


Отримати інформацію із запитання
  [Arguments]  ${username}  ${tender_uaid}  ${question_id}  ${field_name}
  Fail  Дане ключове слово не реалізовано


Відповісти на запитання
  [Arguments]  ${username}  ${tender_uaid}  ${answer_data}  ${question_id}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply}

##############################################################################
#             Claims
##############################################################################

Створити чернетку вимоги про виправлення умов закупівлі
  [Documentation]  Створює вимогу у статусі "draft"
  [Arguments]  ${username}  ${tender_uaid}  ${claim}
  Fail  Дане ключове слово не реалізовано
  [return]  ${complaintID}


Створити чернетку вимоги про виправлення умов лоту
  [Documentation]  Створює вимогу у статусі "draft"
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${lot_index}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply.data.complaintID}


Створити чернетку вимоги про виправлення визначення переможця
  [Documentation]  Створює вимогу у статусі "draft"
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${award_index}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply.data.complaintID}


Створити вимогу про виправлення умов закупівлі
  [Documentation]  Створює вимогу у статусі "claim"
  ...      Можна створити вимогу як з документацією, так і без неї
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${document}=${None}
  Fail  Дане ключове слово не реалізовано
  [return]  ${complaintID}


Створити вимогу про виправлення умов лоту
  [Documentation]  Створює вимогу у статусі "claim"
  ...      Можна створити вимогу як з документацією, так і без неї
  ...      Якщо lot_index == None, то створюється вимога про виправлення умов тендера.
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${lot_index}  ${document}=${None}
  Fail  Дане ключове слово не реалізовано
  [return]  ${complaintID}


Створити вимогу про виправлення визначення переможця
  [Documentation]  Створює вимогу у статусі "claim"
  ...      Можна створити вимогу як з документацією, так і без неї
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${award_index}  ${document}=${None}
  Fail  Дане ключове слово не реалізовано
  [return]  ${complaintID}


Завантажити документацію до вимоги
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${document}
  Fail  Дане ключове слово не реалізовано


Завантажити документацію до вимоги про виправлення визначення переможця
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${award_index}  ${document}
  Fail  Дане ключове слово не реалізовано


Подати вимогу
  [Documentation]  Переводить вимогу зі статусу "draft" у статус "claim"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${confirmation_data}
  Fail  Дане ключове слово не реалізовано


Подати вимогу про виправлення визначення переможця
  [Documentation]  Переводить вимогу зі статусу "draft" у статус "claim"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${award_index}  ${confirmation_data}
  Fail  Дане ключове слово не реалізовано


Відповісти на вимогу про виправлення умов закупівлі
  [Documentation]  Переводить вимогу зі статусу "claim" у статус "answered"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${answer_data}
  Fail  Дане ключове слово не реалізовано


Відповісти на вимогу про виправлення умов лоту
  [Documentation]  Переводить вимогу зі статусу "claim" у статус "answered"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${answer_data}
  Fail  Дане ключове слово не реалізовано


Відповісти на вимогу про виправлення визначення переможця
  [Documentation]  Переводить вимогу зі статусу "claim" у статус "answered"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${answer_data}  ${award_index}
  Fail  Дане ключове слово не реалізовано


Підтвердити вирішення вимоги про виправлення умов закупівлі
  [Documentation]  Переводить вимогу зі статусу "answered" у статус "resolved"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${confirmation_data}
  Fail  Дане ключове слово не реалізовано


Підтвердити вирішення вимоги про виправлення умов лоту
  [Documentation]  Переводить вимогу зі статусу "answered" у статус "resolved"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${confirmation_data}
  Fail  Дане ключове слово не реалізовано


Підтвердити вирішення вимоги про виправлення визначення переможця
  [Documentation]  Переводить вимогу зі статусу "answered" у статус "resolved"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${confirmation_data}  ${award_index}
  Fail  Дане ключове слово не реалізовано


Скасувати вимогу про виправлення умов закупівлі
  [Documentation]  Переводить вимогу в статус "canceled"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${cancellation_data}
  Fail  Дане ключове слово не реалізовано


Скасувати вимогу про виправлення умов лоту
  [Documentation]  Переводить вимогу в статус "canceled"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${cancellation_data}
  Fail  Дане ключове слово не реалізовано


Скасувати вимогу про виправлення визначення переможця
  [Documentation]  Переводить вимогу в статус "canceled"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${cancellation_data}  ${award_index}
  Fail  Дане ключове слово не реалізовано


Перетворити вимогу про виправлення умов закупівлі в скаргу
  [Documentation]  Переводить вимогу у статус "pending"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${escalating_data}
  Fail  Дане ключове слово не реалізовано


Перетворити вимогу про виправлення умов лоту в скаргу
  [Documentation]  Переводить вимогу у статус "pending"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${escalating_data}
  Fail  Дане ключове слово не реалізовано


Перетворити вимогу про виправлення визначення переможця в скаргу
  [Documentation]  Переводить вимогу у статус "pending"
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${escalating_data}  ${award_index}
  Fail  Дане ключове слово не реалізовано

##############################################################################
#             Bid operations
##############################################################################

Подати цінову пропозицію
  [Arguments]  ${username}  ${tender_uaid}  ${bid}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply}


Змінити цінову пропозицію
  [Arguments]  ${username}  ${tender_uaid}  ${fieldname}  ${fieldvalue}
  Fail  Дане ключове слово не реалізовано
  [return]   ${reply}


Скасувати цінову пропозицію
  [Arguments]  ${username}  ${tender_uaid}
  Fail  Дане ключове слово не реалізовано
  [return]   ${reply}


Завантажити документ в ставку
  [Arguments]  ${username}  ${path}  ${tender_uaid}  ${doc_type}=documents
  Fail  Дане ключове слово не реалізовано
  [return]  ${uploaded_file}


Змінити документ в ставці
  [Arguments]  ${username}  ${path}  ${docid}
  Fail  Дане ключове слово не реалізовано
  [return]  ${uploaded_file}


Змінити документацію в ставці
  [Arguments]  ${username}  ${doc_data}  ${docid}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply}


Отримати пропозицію
  [Arguments]  ${username}  ${tender_uaid}
  Fail  Дане ключове слово не реалізовано
  [return]  ${reply}


Отримати інформацію із пропозиції
  [Arguments]  ${username}  ${tender_uaid}  ${field}
  Fail  Дане ключове слово не реалізовано
  [return]  ${bid.data.${field}}


Отримати посилання на аукціон для учасника
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}=${Empty}
  Fail  Дане ключове слово не реалізовано
  [return]  ${participationUrl}

##############################################################################
#             Qualification operations
##############################################################################

Завантажити документ рішення кваліфікаційної комісії
  [Documentation]
  ...      [Arguments] Username, tender uaid, qualification number and document to upload
  ...      [Description] Find tender using uaid,  and call upload_qualification_document
  ...      [Return] Reply of API
  [Arguments]  ${username}  ${document}  ${tender_uaid}  ${award_num}
  Fail  Дане ключове слово не реалізовано
  [Return]  ${doc}


Підтвердити постачальника
  [Documentation]
  ...      [Arguments] Username, tender uaid and number of the award to confirm
  ...      Find tender using uaid, create dict with confirmation data and call patch_award
  ...      [Return] Nothing
  [Arguments]  ${username}  ${tender_uaid}  ${award_num}
  Fail  Дане ключове слово не реалізовано


Дискваліфікувати постачальника
  [Documentation]
  ...      [Arguments] Username, tender uaid and award number
  ...      [Description] Find tender using uaid, create data dict with unsuccessful status and call patch_award
  ...      [Return] Reply of API
  [Arguments]  ${username}  ${tender_uaid}  ${award_num}
  Fail  Дане ключове слово не реалізовано
  [Return]  ${reply}


Скасування рішення кваліфікаційної комісії
  [Documentation]
  ...      [Arguments] Username, tender uaid and award number
  ...      [Description] Find tender using uaid, create data dict with unsuccessful status and call patch_award
  ...      [Return] Reply of API
  [Arguments]  ${username}  ${tender_uaid}  ${award_num}
  Fail  Дане ключове слово не реалізовано
  [Return]  ${reply}

##############################################################################
#             Limited procurement
##############################################################################

Створити постачальника, додати документацію і підтвердити його
  [Documentation]
  ...      [Arguments] Username, tender uaid and supplier data
  ...      Find tender using uaid and call create_award, add documentation to that award and update his status to active
  ...      [Return] Nothing
  [Arguments]  ${username}  ${tender_uaid}  ${supplier_data}  ${document}
  Fail  Дане ключове слово не реалізовано


Скасувати закупівлю
  [Documentation]
  ...      [Arguments] Username, tender uaid, cancellation reason,
  ...      document and new description of document
  ...      [Description] Find tender using uaid, set cancellation reason, get data from cancel_tender
  ...      and call create_cancellation
  ...      After that add document to cancellation and change description of document
  ...      [Return] Nothing
  [Arguments]  ${username}  ${tender_uaid}  ${cancellation_reason}  ${document}  ${new_description}
  Fail  Дане ключове слово не реалізовано


Завантажити документацію до запиту на скасування
  [Documentation]
  ...      [Arguments] Username, tender uaid, cancellation id and document to upload
  ...      [Description] Find tender using uaid, and call upload_cancellation_document
  ...      [Return] ID of added document
  [Arguments]  ${username}  ${tender_uaid}  ${cancellation_id}  ${document}
  Fail  Дане ключове слово не реалізовано
  [Return]  ${doc_reply.data.id}


Змінити опис документа в скасуванні
  [Documentation]
  ...      [Arguments] Username, tender uaid, cancellation id, document id and new description of document
  ...      [Description] Find tender using uaid, create dict with data about description and call
  ...      patch_cancellation_document
  ...      [Return] Nothing
  [Arguments]  ${username}  ${tender_uaid}  ${cancellation_id}  ${document_id}  ${new_description}
  Fail  Дане ключове слово не реалізовано


Завантажити нову версію документа до запиту на скасування
  [Documentation]
  ...      [Arguments] Username, tender uaid, cancallation number and cancellation document number
  ...      Find tender using uaid, create fake documentation and call update_cancellation_document
  ...      [Return] Nothing
  [Arguments]  ${username}  ${tender_uaid}  ${cancel_num}  ${doc_num}
  Fail  Дане ключове слово не реалізовано


Підтвердити скасування закупівлі
  [Documentation]
  ...      [Arguments] Username, tender uaid, cancellation number
  ...      Find tender using uaid, get cancellation test_confirmation data and call patch_cancellation
  ...      [Return] Nothing
  [Arguments]  ${username}  ${tender_uaid}  ${cancel_id}
  Fail  Дане ключове слово не реалізовано


Підтвердити підписання контракту
  [Documentation]
  ...      [Arguments] Username, tender uaid, contract number
  ...      Find tender using uaid, get contract test_confirmation data and call patch_contract
  ...      [Return] Nothing
  [Arguments]  ${username}  ${tender_uaid}  ${contract_num}
  Fail  Дане ключове слово не реалізовано

##############################################################################
#             OpenUA procedure
##############################################################################

Підтвердити кваліфікацію
  [Documentation]
  ...      [Arguments] Username, tender uaid and qualification number
  ...      [Description] Find tender using uaid, create data dict with active status and call patch_qualification
  ...      [Return] Reply of API
  [Arguments]  ${username}  ${tender_uaid}  ${qualification_num}
  Fail  Дане ключове слово не реалізовано
  [Return]  ${reply}


Відхилити кваліфікацію
  [Documentation]
  ...      [Arguments] Username, tender uaid and qualification number
  ...      [Description] Find tender using uaid, create data dict with unsuccessful status and call patch_qualification
  ...      [Return] Reply of API
  [Arguments]  ${username}  ${tender_uaid}  ${qualification_num}
  Fail  Дане ключове слово не реалізовано
  [Return]  ${reply}


Завантажити документ у кваліфікацію
  [Documentation]
  ...      [Arguments] Username, tender uaid, qualification number and document to upload
  ...      [Description] Find tender using uaid,  and call upload_qualification_document
  ...      [Return] Reply of API
  [Arguments]  ${username}  ${document}  ${tender_uaid}  ${qualification_num}
  Fail  Дане ключове слово не реалізовано
  [Return]  ${doc_reply}


Скасувати кваліфікацію
  [Documentation]
  ...      [Arguments] Username, tender uaid and qualification number
  ...      [Description] Find tender using uaid, create data dict with cancelled status and call patch_qualification
  ...      [Return] Reply of API
  [Arguments]  ${username}  ${tender_uaid}  ${qualification_num}
  Fail  Дане ключове слово не реалізовано
  [Return]  ${reply}


Затвердити остаточне рішення кваліфікації
  [Documentation]
  ...      [Arguments] Username and tender uaid
  ...
  ...      [Description] Find tender using uaid and call patch_tender
  ...
  ...      [Return] Reply of API
  [Arguments]  ${username}  ${tender_uaid}
  Fail  Дане ключове слово не реалізовано
  [Return]  ${reply}


