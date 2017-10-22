#ifndef MODEL_H
#define MODEL_H

#include "entities/category.h"
#include <QList>
#include <QSqlDatabase>

class Model {
public:
  Model();
  QList<QObject *> categories();
  void addCategory(QString const &);

private:
  static void createDatabase();
  QSqlDatabase m_db;
};

#endif // MODEL_H