set(_supported_components libodb sqlite mysql pgsql)

foreach(_comp ${odb_FIND_COMPONENTS})
    if(NOT ";${_supported_components};" MATCHES _comp)
        set(odb_FOUND False)
        set(odb_NOTFOUND_MESSAGE "Unsupported component: ${_comp}")
    endif()
    include("${CMAKE_CURRENT_LIST_DIR}/odb_${_comp}Config.cmake")
endforeach()
set(odb_FOUND True)