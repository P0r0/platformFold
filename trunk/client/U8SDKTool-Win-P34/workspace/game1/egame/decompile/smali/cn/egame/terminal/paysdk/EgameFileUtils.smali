.class public Lcn/egame/terminal/paysdk/EgameFileUtils;
.super Ljava/lang/Object;
.source "EgameFileUtils.java"


# static fields
.field public static final PREFIX_NAME:Ljava/lang/String; = "egame"

.field public static final PUSH_ROOT_DIR:Ljava/lang/String;

.field public static final ROOT_DIR:Ljava/lang/String;

.field protected static sCB:Ljava/lang/Object;

.field protected static sCC:Ljava/lang/Object;

.field public static sObjOne:Ljava/lang/Object;

.field public static sObjTwo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcn/egame/terminal/paysdk/EgameFileUtils;->sObjOne:Ljava/lang/Object;

    .line 42
    sput-object v0, Lcn/egame/terminal/paysdk/EgameFileUtils;->sObjTwo:Ljava/lang/Object;

    .line 43
    sput-object v0, Lcn/egame/terminal/paysdk/EgameFileUtils;->sCB:Ljava/lang/Object;

    .line 44
    sput-object v0, Lcn/egame/terminal/paysdk/EgameFileUtils;->sCC:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "egame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pay4x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/paysdk/EgameFileUtils;->ROOT_DIR:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "egame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "psh1x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/paysdk/EgameFileUtils;->PUSH_ROOT_DIR:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareFileName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .registers 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 172
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v3, v0

    if-ge v1, v3, :cond_20

    .line 175
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcn/egame/terminal/paysdk/EgameFileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 176
    .local v2, "success":Z
    if-nez v2, :cond_1d

    .line 177
    const/4 v3, 0x0

    .line 182
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :goto_1c
    return v3

    .line 174
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 182
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1c
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 154
    if-nez p0, :cond_4

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_3
.end method

.method public static findAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "nameList":[Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "egame"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_4d

    move-result-object v1

    .line 193
    :goto_d
    if-eqz v1, :cond_12

    array-length v4, v1

    if-nez v4, :cond_13

    .line 217
    :cond_12
    :goto_12
    return-object v3

    .line 197
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, v1

    move v4, v5

    :goto_1a
    if-ge v4, v6, :cond_38

    aget-object v0, v1, v4

    .line 199
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 201
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 205
    .end local v0    # "name":Ljava/lang/String;
    :cond_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 206
    new-instance v3, Lcn/egame/terminal/paysdk/EgameFileUtils$3;

    invoke-direct {v3}, Lcn/egame/terminal/paysdk/EgameFileUtils$3;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_12

    .line 189
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4d
    move-exception v4

    goto :goto_d
.end method

.method public static findFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 150
    :cond_7
    :goto_7
    return-object v3

    .line 108
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 114
    new-instance v4, Lcn/egame/terminal/paysdk/EgameFileUtils$1;

    invoke-direct {v4, p1, p2}, Lcn/egame/terminal/paysdk/EgameFileUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 129
    .local v2, "list":[Ljava/io/File;
    if-eqz v2, :cond_7

    array-length v4, v2

    if-eqz v4, :cond_7

    .line 133
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v3, Lcn/egame/terminal/paysdk/EgameFileUtils$2;

    invoke-direct {v3}, Lcn/egame/terminal/paysdk/EgameFileUtils$2;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_7
.end method

.method public static getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_6

    .line 90
    :goto_5
    return-object v0

    .line 87
    :catch_6
    move-exception v0

    .line 90
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_6

    .line 99
    :goto_5
    return-object v0

    .line 96
    :catch_6
    move-exception v0

    .line 99
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static listFiles(Ljava/io/File;)Ljava/util/List;
    .registers 7
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 273
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 274
    .local v2, "tmp":[Ljava/io/File;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v4, :cond_29

    aget-object v0, v2, v3

    .line 275
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 276
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 278
    :cond_21
    invoke-static {v0}, Lcn/egame/terminal/paysdk/EgameFileUtils;->listFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1e

    .line 283
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "tmp":[Ljava/io/File;
    :cond_29
    return-object v1
.end method

.method protected static varargs load(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 297
    const-class v5, Landroid/content/Context;

    aget-object v4, p1, v8

    check-cast v4, Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 298
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 300
    .local v3, "obj":Ljava/lang/Object;
    aget-object v4, p1, v9

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 302
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v4, v11, [Ljava/lang/Class;

    aget-object v5, p1, v7

    .line 303
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v8

    aget-object v5, p1, v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v9

    aget-object v5, p1, v11

    .line 304
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v10

    .line 302
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 306
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v4, v11, [Ljava/lang/Object;

    aget-object v5, p1, v7

    aput-object v5, v4, v8

    aget-object v5, p1, v10

    aput-object v5, v4, v9

    aget-object v5, p1, v11

    aput-object v5, v4, v7

    aput-object v3, v4, v10

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v4, 0x5

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Class;

    const/4 v7, 0x5

    aget-object v7, p1, v7

    .line 309
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v8

    .line 308
    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 310
    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, 0x6

    aget-object v5, p1, v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-object v3
.end method

.method public static streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v3, 0x0

    .line 61
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 81
    :cond_5
    :goto_5
    return v3

    .line 66
    :cond_6
    const/16 v4, 0x4000

    :try_start_8
    new-array v0, v4, [B

    .line 67
    .local v0, "buf":[B
    const/4 v2, -0x1

    .line 68
    .local v2, "len":I
    :goto_b
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_19

    .line 69
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_b

    .line 76
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :catch_17
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_5

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    :cond_19
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 74
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 75
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_17

    .line 81
    const/4 v3, 0x1

    goto :goto_5
.end method

.method public static unZipFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 16
    .param p0, "zipIs"    # Ljava/io/InputStream;
    .param p1, "outDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v10, Ljava/util/zip/ZipInputStream;

    invoke-direct {v10, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 240
    .local v10, "zin":Ljava/util/zip/ZipInputStream;
    :cond_5
    :goto_5
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_93

    .line 241
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "entryName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 244
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v2, "decompressDirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    .line 246
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_5

    .line 249
    .end local v2    # "decompressDirFile":Ljava/io/File;
    :cond_3b
    const/4 v11, 0x0

    const-string v12, "/"

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "fileDir":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v6, "fileDirFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_54

    .line 252
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 254
    :cond_54
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 256
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 257
    .local v0, "bi":Ljava/io/BufferedInputStream;
    const/16 v11, 0x400

    new-array v8, v11, [B

    .line 258
    .local v8, "readContent":[B
    invoke-virtual {v0, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    .line 259
    .local v9, "readCount":I
    :goto_82
    const/4 v11, -0x1

    if-eq v9, v11, :cond_8e

    .line 260
    const/4 v11, 0x0

    invoke-virtual {v1, v8, v11, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 261
    invoke-virtual {v0, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    goto :goto_82

    .line 263
    :cond_8e
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_5

    .line 266
    .end local v0    # "bi":Ljava/io/BufferedInputStream;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v5    # "fileDir":Ljava/lang/String;
    .end local v6    # "fileDirFile":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "readContent":[B
    .end local v9    # "readCount":I
    :cond_93
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V

    .line 267
    return-void
.end method
