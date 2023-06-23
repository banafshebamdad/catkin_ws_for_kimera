/****************************************************************************
** Meta object code from reading C++ file 'textured_mesh_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "mesh_rviz_plugins/textured_mesh_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'textured_mesh_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mesh_rviz_plugins__TexturedMeshDisplay_t {
    QByteArrayData data[14];
    char stringdata0[245];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mesh_rviz_plugins__TexturedMeshDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mesh_rviz_plugins__TexturedMeshDisplay_t qt_meta_stringdata_mesh_rviz_plugins__TexturedMeshDisplay = {
    {
QT_MOC_LITERAL(0, 0, 38), // "mesh_rviz_plugins::TexturedMe..."
QT_MOC_LITERAL(1, 39, 11), // "updateTopic"
QT_MOC_LITERAL(2, 51, 0), // ""
QT_MOC_LITERAL(3, 52, 15), // "updateQueueSize"
QT_MOC_LITERAL(4, 68, 17), // "updatePolygonMode"
QT_MOC_LITERAL(5, 86, 15), // "updatePointSize"
QT_MOC_LITERAL(6, 102, 19), // "updateShaderProgram"
QT_MOC_LITERAL(7, 122, 18), // "updatePhongShading"
QT_MOC_LITERAL(8, 141, 21), // "updateSceneColorScale"
QT_MOC_LITERAL(9, 163, 17), // "updateShowNormals"
QT_MOC_LITERAL(10, 181, 16), // "updateNormalSize"
QT_MOC_LITERAL(11, 198, 23), // "fillTransportOptionList"
QT_MOC_LITERAL(12, 222, 13), // "EnumProperty*"
QT_MOC_LITERAL(13, 236, 8) // "property"

    },
    "mesh_rviz_plugins::TexturedMeshDisplay\0"
    "updateTopic\0\0updateQueueSize\0"
    "updatePolygonMode\0updatePointSize\0"
    "updateShaderProgram\0updatePhongShading\0"
    "updateSceneColorScale\0updateShowNormals\0"
    "updateNormalSize\0fillTransportOptionList\0"
    "EnumProperty*\0property"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mesh_rviz_plugins__TexturedMeshDisplay[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   64,    2, 0x08 /* Private */,
       3,    0,   65,    2, 0x08 /* Private */,
       4,    0,   66,    2, 0x08 /* Private */,
       5,    0,   67,    2, 0x08 /* Private */,
       6,    0,   68,    2, 0x08 /* Private */,
       7,    0,   69,    2, 0x08 /* Private */,
       8,    0,   70,    2, 0x08 /* Private */,
       9,    0,   71,    2, 0x08 /* Private */,
      10,    0,   72,    2, 0x08 /* Private */,
      11,    1,   73,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 12,   13,

       0        // eod
};

void mesh_rviz_plugins::TexturedMeshDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<TexturedMeshDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateTopic(); break;
        case 1: _t->updateQueueSize(); break;
        case 2: _t->updatePolygonMode(); break;
        case 3: _t->updatePointSize(); break;
        case 4: _t->updateShaderProgram(); break;
        case 5: _t->updatePhongShading(); break;
        case 6: _t->updateSceneColorScale(); break;
        case 7: _t->updateShowNormals(); break;
        case 8: _t->updateNormalSize(); break;
        case 9: _t->fillTransportOptionList((*reinterpret_cast< EnumProperty*(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject mesh_rviz_plugins::TexturedMeshDisplay::staticMetaObject = { {
    &rviz::Display::staticMetaObject,
    qt_meta_stringdata_mesh_rviz_plugins__TexturedMeshDisplay.data,
    qt_meta_data_mesh_rviz_plugins__TexturedMeshDisplay,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *mesh_rviz_plugins::TexturedMeshDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mesh_rviz_plugins::TexturedMeshDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mesh_rviz_plugins__TexturedMeshDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::Display::qt_metacast(_clname);
}

int mesh_rviz_plugins::TexturedMeshDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
