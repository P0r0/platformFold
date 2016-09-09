.class public Lcom/gionee/game/offlinesdk/utils/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final GAME_FOLDER:Ljava/lang/String; = "gamesdk"

.field private static sSDCardDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->getRootPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->sSDCardDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFileDir(Ljava/io/File;Z)V
    .registers 3
    .param p0, "fileDir"    # Ljava/io/File;
    .param p1, "isNeedDeleteHideFile"    # Z

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 53
    :cond_c
    :goto_c
    return-void

    .line 52
    :cond_d
    invoke-static {p0, p1}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->recursionDeleteFile(Ljava/io/File;Z)V

    goto :goto_c
.end method

.method public static getHomeDirAbsolute()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->isSDCardMounted()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->sSDCardDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gamesdk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "retPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 41
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/FileUtil;->mkdirs(Ljava/io/File;)Z

    .line 45
    :cond_2f
    :goto_2f
    return-object v1

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "retPath":Ljava/lang/String;
    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method private static getRootPath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardDir()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    sget-object v0, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->sSDCardDir:Ljava/lang/String;

    .line 24
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isSDCardChange()Z
    .registers 2

    .prologue
    .line 28
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->getRootPath()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "rootPath":Ljava/lang/String;
    sget-object v1, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->sSDCardDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isSDCardMounted()Z
    .registers 2

    .prologue
    .line 13
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static onMediaChange()V
    .registers 1

    .prologue
    .line 17
    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->getRootPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->sSDCardDir:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private static recursionDeleteFile(Ljava/io/File;Z)V
    .registers 8
    .param p0, "fileDir"    # Ljava/io/File;
    .param p1, "isNeedDeleteHideFile"    # Z

    .prologue
    .line 56
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_9

    .line 72
    :cond_8
    return-void

    .line 59
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 60
    .local v1, "childFiles":[Ljava/io/File;
    if-eqz v1, :cond_8

    .line 63
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_12
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    .line 64
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 65
    invoke-static {v2, p1}, Lcom/gionee/game/offlinesdk/utils/StorageUtils;->recursionDeleteFile(Ljava/io/File;Z)V

    .line 63
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 67
    :cond_22
    if-nez p1, :cond_2a

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 68
    :cond_2a
    invoke-static {v2}, Lcom/gionee/game/offlinesdk/utils/FileUtil;->delete(Ljava/io/File;)Z

    goto :goto_1f
.end method
