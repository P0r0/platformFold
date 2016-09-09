.class public Lmobisocial/omlib/db/CursorReader;
.super Ljava/lang/Object;
.source "CursorReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TObject:",
        "Lmobisocial/omlib/db/util/OMBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CursorReader"


# instance fields
.field private mOrderedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTObject;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 22
    .local p0, "this":Lmobisocial/omlib/db/CursorReader;, "Lmobisocial/omlib/db/CursorReader<TTObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lmobisocial/omlib/db/CursorReader;->mType:Ljava/lang/Class;

    .line 24
    return-void
.end method

.method public static get(Lmobisocial/omlib/db/util/TableMapping;Ljava/lang/Class;Landroid/database/Cursor;)Lmobisocial/omlib/db/CursorReader;
    .registers 13
    .param p0, "mapping"    # Lmobisocial/omlib/db/util/TableMapping;
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Lmobisocial/omlib/db/util/TableMapping;",
            "Ljava/lang/Class",
            "<TMObject;>;",
            "Landroid/database/Cursor;",
            ")",
            "Lmobisocial/omlib/db/CursorReader",
            "<TMObject;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TMObject;>;"
    new-instance v3, Lmobisocial/omlib/db/CursorReader;

    invoke-direct {v3, p1}, Lmobisocial/omlib/db/CursorReader;-><init>(Ljava/lang/Class;)V

    .line 28
    .local v3, "r":Lmobisocial/omlib/db/CursorReader;
    iget-object v0, p0, Lmobisocial/omlib/db/util/TableMapping;->columnMapping:Ljava/util/Map;

    .line 29
    .local v0, "columnNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    .line 30
    .local v4, "sz":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v3, Lmobisocial/omlib/db/CursorReader;->mOrderedFields:Ljava/util/List;

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v3, Lmobisocial/omlib/db/CursorReader;->mOrderedTypes:Ljava/util/List;

    .line 32
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v5, 0x0

    move v6, v5

    :goto_20
    if-ge v6, v8, :cond_44

    aget-object v2, v7, v6

    .line 33
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 34
    .local v1, "f":Ljava/lang/reflect/Field;
    iget-object v5, v3, Lmobisocial/omlib/db/CursorReader;->mOrderedFields:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v9, v3, Lmobisocial/omlib/db/CursorReader;->mOrderedTypes:Ljava/util/List;

    if-nez v1, :cond_3f

    const/4 v5, 0x0

    :goto_38
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_20

    .line 35
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_38

    .line 37
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "k":Ljava/lang/String;
    :cond_44
    return-object v3
.end method


# virtual methods
.method public readAsList(Landroid/database/Cursor;)Ljava/util/List;
    .registers 4
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TTObject;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lmobisocial/omlib/db/CursorReader;, "Lmobisocial/omlib/db/CursorReader<TTObject;>;"
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<TTObject;>;"
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 60
    :goto_d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 61
    invoke-virtual {p0, p1}, Lmobisocial/omlib/db/CursorReader;->readObject(Landroid/database/Cursor;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_d

    .line 65
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<TTObject;>;"
    :catchall_1b
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v0    # "results":Ljava/util/List;, "Ljava/util/List<TTObject;>;"
    :cond_20
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public readObject(Landroid/database/Cursor;)Lmobisocial/omlib/db/util/OMBase;
    .registers 6
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TTObject;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lmobisocial/omlib/db/CursorReader;, "Lmobisocial/omlib/db/CursorReader<TTObject;>;"
    :try_start_0
    iget-object v2, p0, Lmobisocial/omlib/db/CursorReader;->mType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/util/OMBase;

    .line 46
    .local v1, "o":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    invoke-virtual {p0, p1, v1}, Lmobisocial/omlib/db/CursorReader;->readObject(Landroid/database/Cursor;Lmobisocial/omlib/db/util/OMBase;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 47
    return-object v1

    .line 48
    .end local v1    # "o":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    :catch_c
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal access for model class"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readObject(Landroid/database/Cursor;Lmobisocial/omlib/db/util/OMBase;)V
    .registers 11
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "TTObject;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lmobisocial/omlib/db/CursorReader;, "Lmobisocial/omlib/db/CursorReader<TTObject;>;"
    .local p2, "o":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    :try_start_0
    iget-object v5, p0, Lmobisocial/omlib/db/CursorReader;->mOrderedFields:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 76
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_be

    .line 77
    iget-object v5, p0, Lmobisocial/omlib/db/CursorReader;->mOrderedFields:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 78
    .local v2, "f":Ljava/lang/reflect/Field;
    if-nez v2, :cond_16

    .line 76
    :cond_13
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 80
    :cond_16
    iget-object v5, p0, Lmobisocial/omlib/db/CursorReader;->mOrderedTypes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 81
    .local v4, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 82
    :cond_2e
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_13

    .line 95
    .end local v0    # "count":I
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    .end local v4    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3a
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Illegal access for model class"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "i":I
    .restart local v4    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_43
    :try_start_43
    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 84
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    .line 85
    :cond_53
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 86
    :cond_63
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    .line 87
    :cond_6f
    const-class v5, [B

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 88
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    .line 89
    :cond_7f
    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 90
    :cond_8f
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_9f

    const/4 v5, 0x1

    :goto_96
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_9f
    const/4 v5, 0x0

    goto :goto_96

    .line 91
    :cond_a1
    const-class v5, Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 92
    :cond_b1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_bc} :catch_3a

    goto/16 :goto_13

    .line 98
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_be
    return-void
.end method
