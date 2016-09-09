.class public Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    }
.end annotation


# static fields
.field private static final GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_WORLD_READABLE:I = 0x1

.field public static final MODE_WORLD_WRITEABLE:I = 0x2


# instance fields
.field private mPreferencesDir:Ljava/io/File;

.field private final mSync:Ljava/lang/Object;

.field private sSharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mSync:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    .line 31
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mPreferencesDir:Ljava/io/File;

    return-void

    .line 34
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Directory can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .prologue
    .line 20
    invoke-static {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private getPreferencesDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mPreferencesDir:Ljava/io/File;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    .line 49
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 39
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    .registers 11

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 59
    sget-object v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_7
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    .line 61
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasFileChanged()Z

    move-result v2

    if-nez v2, :cond_19

    .line 62
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_59

    .line 120
    :goto_18
    return-object v0

    .line 64
    :cond_19
    monitor-exit v1

    .line 66
    invoke-static {v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 69
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 70
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 73
    :cond_2a
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 75
    :cond_33
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 78
    :try_start_40
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 79
    invoke-static {v2}, Lcom/ta/utdid2/core/persistent/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v1

    .line 80
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_4c} :catch_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_4c} :catch_7f
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4c} :catch_84
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_89

    .line 108
    :cond_4c
    :goto_4c
    sget-object v2, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    if-eqz v0, :cond_8e

    .line 112
    :try_start_51
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->replace(Ljava/util/Map;)V

    .line 120
    :cond_54
    :goto_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_56

    goto :goto_18

    .line 121
    :catchall_56
    move-exception v0

    monitor-exit v2

    throw v0

    .line 64
    :catchall_59
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_5c
    move-exception v2

    .line 83
    :try_start_5d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 84
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    .line 85
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 86
    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x0

    array-length v6, v4

    const-string v7, "UTF-8"

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_74} :catch_7a

    goto :goto_4c

    .line 87
    :catch_75
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4c

    .line 89
    :catch_7a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 92
    :catch_7f
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4c

    .line 94
    :catch_84
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 102
    :catch_89
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 114
    :cond_8e
    :try_start_8e
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    .line 115
    if-nez v0, :cond_54

    .line 116
    new-instance v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    invoke-direct {v0, v3, p2, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;-><init>(Ljava/io/File;ILjava/util/Map;)V

    .line 117
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_56

    goto :goto_54
.end method
