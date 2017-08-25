# Let's build some executables
set(BIN_SRC_DIR ${CMAKE_SOURCE_DIR}/src/c/bin)
link_directories(${XERCES_LIB_DIR} ${WX_LIB_DIR} /usr/lib64)
include_directories(${XERCES_INCLUDE})
set(X_LIBRARIES -lXt -lX11)
set(GL_LIBRARIES -lwx_gtk2_gl-2.8 -lGL -lGLU -ljpeg)

# basistool
set(basistool_SRC_DIR ${BIN_SRC_DIR}/basistool)
file(GLOB basistool_SOURCE ${basistool_SRC_DIR}/*.C)
add_executable(basistool ${basistool_SOURCE})
target_include_directories(basistool
    PUBLIC ${WX_INCLUDE}
    PRIVATE ${basistool_SRC_DIR})
target_link_libraries(basistool
    ewxaui
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# builder
set(builder_SRC_DIR ${BIN_SRC_DIR}/builder)
file(GLOB builder_SOURCE ${builder_SRC_DIR}/*.C)
add_executable(builder ${builder_SOURCE})
target_include_directories(builder
    PUBLIC ${WX_INCLUDE}
    PRIVATE ${builder_SRC_DIR})
target_link_libraries(builder
    wxguicomm
    wxviz
    wxinv
    vizsg
    moiv
    inv
    commxt
    commtools
    rcommand
    expect
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    xml
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
    ${GL_LIBRARIES}
    ${X_LIBRARIES}

)

# calced
set(calced_SRC_DIR ${BIN_SRC_DIR}/calced)
file(GLOB calced_SOURCE ${calced_SRC_DIR}/*.C)
add_executable(calced ${calced_SOURCE})
target_include_directories(calced
    PUBLIC ${WX_INCLUDE}
    PRIVATE ${calced_SRC_DIR})
target_link_libraries(calced
    commtools
    rcommand
    expect
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# davutils
add_executable(load_tgbs ${BIN_SRC_DIR}/davutils/load_tgbs.C)
target_link_libraries(load_tgbs
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${XERCES_LIBRARIES}
)

# dirdyed
set(dirdyed_SRC_DIR ${BIN_SRC_DIR}/dirdyed)
file(GLOB dirdyed_SOURCE ${dirdyed_SRC_DIR}/*.C)
add_executable(dirdyed ${dirdyed_SOURCE})
target_include_directories(dirdyed
    PUBLIC ${WX_INCLUDE}
    PRIVATE ${dirdyed_SRC_DIR})
target_link_libraries(dirdyed
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# ecmd
add_executable(ecmd ${BIN_SRC_DIR}/ecmd/ecmd.C)
target_link_libraries(ecmd
    rcommand
    expect
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${XERCES_LIBRARIES}
)

# gateway
set(gateway_SRC_DIR ${BIN_SRC_DIR}/gateway)
file(GLOB gateway_SOURCE ${gateway_SRC_DIR}/*.C)
add_executable(gateway ${gateway_SOURCE})
target_include_directories(gateway
    PUBLIC ${WX_INCLUDE}
    PRIVATE ${gateway_SRC_DIR})
target_link_libraries(gateway
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
 )

# jobstore
add_executable(eccejobmaster ${BIN_SRC_DIR}/jobstore/eccejobmaster.C)
target_link_libraries(eccejobmaster
    commxt
    rcommand
    expect
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${X_LIBRARIES}
    ${XERCES_LIBRARIES}
 )

add_executable(eccejobstore ${BIN_SRC_DIR}/jobstore/eccejobstore.C)
target_link_libraries(eccejobstore
    commxt
    rcommand
    expect
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${X_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# launcher
set(launcher_SRC_DIR ${BIN_SRC_DIR}/launcher)
file(GLOB launcher_SOURCE ${launcher_SRC_DIR}/*.C)
add_executable(launcher ${launcher_SOURCE})
target_include_directories(launcher
    PUBLIC ${WX_INCLUDE}
    PRIVATE ${launcher_SRC_DIR})
target_link_libraries(launcher
    commxt
    commtools
    rcommand
    expect
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${X_LIBRARIES}
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# machbrowser
set(machbrowser_SRC_DIR ${BIN_SRC_DIR}/machbrowser)
file(GLOB machbrowser_SOURCE ${machbrowser_SRC_DIR}/*.C)
add_executable(machbrowser ${machbrowser_SOURCE})
target_include_directories(machbrowser
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${machbrowser_SRC_DIR})
target_link_libraries(machbrowser
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    rcommand
    expect
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# machregister
set(machregister_SRC_DIR ${BIN_SRC_DIR}/machregister)
file(GLOB machregister_SOURCE ${machregister_SRC_DIR}/*.C)
add_executable(machregister ${machregister_SOURCE})
target_include_directories(machregister
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${machregister_SRC_DIR})
target_link_libraries(machregister
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# mddynamics
set(mddynamics_SRC_DIR ${BIN_SRC_DIR}/mddynamics)
file(GLOB mddynamics_SOURCE ${mddynamics_SRC_DIR}/*.C)
add_executable(mddynamics ${mddynamics_SOURCE})
target_include_directories(mddynamics
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${mddynamics_SRC_DIR})
target_link_libraries(mddynamics
    wxmdtools
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# mdenergy
set(mdenergy_SRC_DIR ${BIN_SRC_DIR}/mdenergy)
file(GLOB mdenergy_SOURCE ${mdenergy_SRC_DIR}/*.C)
add_executable(mdenergy ${mdenergy_SOURCE})
target_include_directories(mdenergy
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${mdenergy_SRC_DIR})
target_link_libraries(mdenergy
    wxmdtools
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# mdoptimize
set(mdoptimize_SRC_DIR ${BIN_SRC_DIR}/mdoptimize)
file(GLOB mdoptimize_SOURCE ${mdoptimize_SRC_DIR}/*.C)
add_executable(mdoptimize ${mdoptimize_SOURCE})
target_include_directories(mdoptimize
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${mdoptimize_SRC_DIR})
target_link_libraries(mdoptimize
    wxmdtools
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# mdprepare
set(mdprepare_SRC_DIR ${BIN_SRC_DIR}/mdprepare)
file(GLOB mdprepare_SOURCE ${mdprepare_SRC_DIR}/*.C)
add_executable(mdprepare ${mdprepare_SOURCE})
target_include_directories(mdprepare
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${mdenergy_SRC_DIR})
target_link_libraries(mdprepare
    wxgui
    wxplotctrl
    wxthings
    commxt
    commtools
    rcommand
    expect
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${X_LIBRARIES}
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# messagedialog
add_executable(msgdialog ${BIN_SRC_DIR}/messagedialog/MessageDialogApp.C)
target_include_directories(msgdialog
    PUBLIC ${WX_INCLUDE})
target_link_libraries(msgdialog
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${XERCES_LIBRARIES}
    ${WX_LIBRARIES}
)

# metadyn
set(metadyn_SRC_DIR ${BIN_SRC_DIR}/metadyn)
file(GLOB metadyn_SOURCE ${metadyn_SRC_DIR}/*.C)
add_executable(metadyn ${metadyn_SOURCE})
target_include_directories(metadyn
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${metadyn_SRC_DIR})
target_link_libraries(metadyn
    commtools
    rcommand
    expect
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# organizer
set(organizer_SRC_DIR ${BIN_SRC_DIR}/organizer)
file(GLOB organizer_SOURCE ${organizer_SRC_DIR}/*.C)
add_executable(organizer ${organizer_SOURCE})
target_include_directories(organizer
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${organizer_SRC_DIR})
target_link_libraries(organizer
    wxguicomm
    commxt
    commtools
    rcommand
    expect
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${X_LIBRARIES}
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# passdialog
add_executable(passdialog ${BIN_SRC_DIR}/passdialog/PasswordDialogApp.C)
target_include_directories(passdialog
    PUBLIC ${WX_INCLUDE})
target_link_libraries(passdialog
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# pertable
set(pertable_SRC_DIR ${BIN_SRC_DIR}/pertable)
file(GLOB pertable_SOURCE ${pertable_SRC_DIR}/*.C)
add_executable(pertable ${pertable_SOURCE})
target_include_directories(pertable
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${pertable_SRC_DIR})
target_link_libraries(pertable
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# polyrate
set(polyrate_SRC_DIR ${BIN_SRC_DIR}/polyrate)
file(GLOB polyrate_SOURCE ${polyrate_SRC_DIR}/*.C)
add_executable(polyed ${polyrate_SOURCE})
target_include_directories(polyed
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${polyrate_SRC_DIR})
target_link_libraries(polyed
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# solvate
set(solvate_SRC_DIR ${BIN_SRC_DIR}/solvate)
file(GLOB solvate_SOURCE ${solvate_SRC_DIR}/*.C)
add_executable(solvate ${solvate_SOURCE})
target_include_directories(solvate
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${solvate_SRC_DIR})
target_link_libraries(solvate
    commtools
    rcommand
    expect
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# vizthumbnail
set(vizthumbnail_SRC_DIR ${BIN_SRC_DIR}/vizthumbnail)
file(GLOB vizthumbnail_SOURCE ${vizthumbnail_SRC_DIR}/*.C)
add_executable(vizthumbnail ${vizthumbnail_SOURCE})
target_include_directories(vizthumbnail
    PUBLIC
        ${WX_INCLUDE}
    PRIVATE ${vizthumbnail_SRC_DIR})
target_link_libraries(vizthumbnail
    wxviz
    wxinv
    vizsg
    moiv
    inv
    wxgui
    wxplotctrl
    wxthings
    edsiimpl
    dav
    cipc
    faces
    xml
    tdat
    util
    ${GL_LIBRARIES}
    ${WX_LIBRARIES}
    ${XERCES_LIBRARIES}
)

# Install
install(
    TARGETS
        basistool
        builder
        calced
        load_tgbs
        dirdyed
        ecmd
        gateway
        eccejobmaster
        eccejobstore
        launcher
        machbrowser
        machregister
        mddynamics
        mdenergy
        mdoptimize
        mdprepare
        msgdialog
        metadyn
        organizer
        passdialog
        pertable
        polyed
        solvate
        vizthumbnail
    DESTINATION ${ECCE_APPS}/bin)
