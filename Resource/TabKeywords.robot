*** Settings ***
Library  SeleniumLibrary
Variables  ../PO/Locators.py

*** Variables ***
${big_placeholder}=  https://cdn.dsmcdn.com//web/production/large_boutique_placeholder.png
${small_placeholder}=  https://cdn.dsmcdn.com//web/production/small_boutique_placeholder.45bc75aeff1b71c69917950ba2f65611.jpg
${p_card_img}=  /Content/images/defaultThumb.jpg
@{Random_Tab}  ${tab_first}  ${tab_second}  ${tab_third}  ${tab_fourth}  ${tab_fifth}  ${tab_sixth}  ${tab_seventh}  ${tab_eighth}  ${tab_ninth}

*** Keywords ***
#First Tab
Click Tab First
    Wait Until Keyword Succeeds  30  1  Click Element  ${tab_first}
    Location Should Be  https://www.trendyol.com/butik/liste/kadin

Check Tab Big Image
    wait until keyword succeeds  30  1  Scroll Element Into View  xpath=//div[@class='site-footer']
    ${tab_big_placeholder}=  run keyword and return status  Element Should Be Visible  ${big_placeholder}
    run keyword if    '${tab_big_placeholder}' == 'False'  Log to console  Resimler sorunsuz bir şekilde yüklenmiştir.
    run keyword if    '${tab_big_placeholder}' == 'True'  Log to console  Yüklenmeyen resimlerin ekran görüntüsü alınmıştır.
    run keyword if    '${tab_big_placeholder}' == 'True'  Capture Page Screenshot  name=non-images.png

Check Tab Small Image
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    ${tab_small_placeholder}=  run keyword and return status  Element Should Be Visible  ${small_placeholder}
    run keyword if    '${tab_small_placeholder}' == 'False'  Log to console  Resimler sorunsuz bir şekilde yüklenmiştir.
    run keyword if    '${tab_small_placeholder}' == 'True'  Log to console  Yüklenmeyen resimlerin ekran görüntüsü alınmıştır.
    run keyword if    '${tab_small_placeholder}' == 'True'  Capture Page Screenshot  name=non-images.png

#Second Tab
Click Tab Second
    Wait Until Keyword Succeeds  30  1  Click Element  ${tab_second}
    Location Should Be  https://www.trendyol.com/butik/liste/erkek

#Third Tab
Click Tab Third
    Wait Until Keyword Succeeds  30  1  Click Element  ${tab_third}
    Location Should Be  https://www.trendyol.com/butik/liste/cocuk

#Fourth Tab
Click Tab Fourth
    Wait Until Keyword Succeeds  30  1  Click Element  ${tab_fourth}
    Location Should Be  https://www.trendyol.com/butik/liste/ev--yasam

#Fifth Tab
Click Tab Fifth
    Wait Until Keyword Succeeds  30  1  Click Element  ${tab_fifth}
    Location Should Be  https://www.trendyol.com/butik/liste/supermarket

#Sixth Tab
Click Tab Sixth
    Wait Until Keyword Succeeds  30  1  Click Element  ${tab_sixth}
    Location Should Be  https://www.trendyol.com/butik/liste/kozmetik

#Seventh Tab
Click Tab Seventh
    Wait Until Keyword Succeeds  30  1  Click Element  ${tab_seventh}
    Location Should Be  https://www.trendyol.com/butik/liste/ayakkabi--canta

#Eighth Tab
Click Tab Eighth
    Wait Until Keyword Succeeds  30  1  Click Element  ${tab_eighth}
    Location Should Be  https://www.trendyol.com/butik/liste/saat--aksesuar

#Ninth Tab
Click Tab Ninth
    Wait Until Keyword Succeeds  30  1  Click Element  ${tab_ninth}
    Location Should Be  https://www.trendyol.com/butik/liste/elektronik

#Random Tab
Random Tab control
    ${Random_Tab}  create list  ${tab_first}  ${tab_second}  ${tab_third}  ${tab_fourth}  ${tab_fifth}  ${tab_sixth}  ${tab_seventh}  ${tab_eighth}  ${tab_ninth}
    ${Choose}=  evaluate  random.choice(${Random_Tab})  random
    Click Element  ${Choose}

Random Butik control
    Click Element  xpath=//div[@class='component-list component-small-list']//article[*]

Check Product Image
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    ${product_image_placeholder}=  run keyword and return status  Element Should Be Visible  ${p_card_img}
    run keyword if    '${product_image_placeholder}' == 'False'  Log to console  Resimler sorunsuz bir şekilde yüklenmiştir.
    run keyword if    '${product_image_placeholder}' == 'True'  Log to console  Yüklenmeyen resimlerin ekran görüntüsü alınmıştır.
    run keyword if    '${product_image_placeholder}' == 'True'  Capture Page Screenshot  name=non-images-product.png

Select Product
    Click Element  xpath=//div[@id='container']//div[*]//a[1]//div[1]//img[1]

Add Shopping Cart
    Click Element  xpath=//div[@class='add-to-bs-tx']
    wait until keyword succeeds  30  1  Wait Until Element Is Visible  id=basketItemCount