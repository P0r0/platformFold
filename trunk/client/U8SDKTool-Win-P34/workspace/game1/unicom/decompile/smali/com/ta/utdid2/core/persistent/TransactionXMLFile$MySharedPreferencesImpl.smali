.class final Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/ta/utdid2/core/persistent/MySharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MySharedPreferencesImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;
    }
.end annotation


# static fields
.field private static final mContent:Ljava/lang/Object;


# instance fields
.field private hasChange:Z

.field private final mBackupFile:Ljava/io/File;

.field private final mFile:Ljava/io/File;

.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/Map;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mContent:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .param p3, "initialContents"    # Ljava/util/Map;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasChange:Z

    .line 128
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 129
    # invokes: Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {p1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->access$000(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 130
    iput p2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMode:I

    .line 131
    if-eqz p3, :cond_1c

    .end local p3    # "initialContents":Ljava/util/Map;
    :goto_12
    iput-object p3, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 133
    return-void

    .line 131
    .restart local p3    # "initialContents":Ljava/util/Map;
    :cond_1c
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "initialContents":Ljava/util/Map;
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_12
.end method

.method static synthetic access$200(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->writeFileLocked()Z

    move-result v0

    return v0
.end method

.method private createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 344
    const/4 v2, 0x0

    .line 346
    .local v2, "str":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_9

    .end local v2    # "str":Ljava/io/FileOutputStream;
    .local v3, "str":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "str":Ljava/io/FileOutputStream;
    .restart local v2    # "str":Ljava/io/FileOutputStream;
    :goto_7
    move-object v4, v2

    .line 357
    :goto_8
    return-object v4

    .line 347
    :catch_9
    move-exception v0

    .line 348
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 349
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_16

    .line 350
    const/4 v4, 0x0

    goto :goto_8

    .line 353
    :cond_16
    :try_start_16
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1b} :catch_1d

    .end local v2    # "str":Ljava/io/FileOutputStream;
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 355
    .end local v3    # "str":Ljava/io/FileOutputStream;
    .restart local v2    # "str":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 354
    :catch_1d
    move-exception v4

    goto :goto_7
.end method

.method private writeFileLocked()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 364
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 365
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 399
    :cond_1b
    :goto_1b
    return v1

    .line 369
    :cond_1c
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 379
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 380
    .local v0, "str":Ljava/io/FileOutputStream;
    if-eqz v0, :cond_1b

    .line 383
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-static {v2, v0}, Lcom/ta/utdid2/core/persistent/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 384
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 387
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_36} :catch_4a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_36} :catch_38

    .line 388
    const/4 v1, 0x1

    goto :goto_1b

    .line 390
    .end local v0    # "str":Ljava/io/FileOutputStream;
    :catch_38
    move-exception v2

    .line 393
    :goto_39
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 394
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_1b

    .line 389
    :catch_4a
    move-exception v2

    goto :goto_39
.end method


# virtual methods
.method public checkFile()Z
    .registers 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    if-eqz v1, :cond_17

    .line 137
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "fTmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 139
    const/4 v1, 0x1

    .line 142
    .end local v0    # "fTmp":Ljava/io/File;
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    monitor-enter p0

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 224
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .registers 2

    .prologue
    .line 340
    new-instance v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;-><init>(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 180
    monitor-enter p0

    .line 182
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 183
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 215
    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 217
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "defValue":Z
    :cond_f
    monitor-exit p0

    return p2

    .line 218
    .end local v0    # "v":Ljava/lang/Boolean;
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 208
    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 210
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2    # "defValue":F
    :cond_f
    monitor-exit p0

    return p2

    .line 211
    .end local v0    # "v":Ljava/lang/Float;
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 194
    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 196
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "defValue":I
    :cond_f
    monitor-exit p0

    return p2

    .line 197
    .end local v0    # "v":Ljava/lang/Integer;
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 201
    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 203
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_f
    monitor-exit p0

    return-wide p2

    .line 204
    .end local v0    # "v":Ljava/lang/Long;
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_d

    .end local v0    # "v":Ljava/lang/String;
    :goto_b
    monitor-exit p0

    return-object v0

    .restart local v0    # "v":Ljava/lang/String;
    :cond_d
    move-object v0, p2

    goto :goto_b

    .line 190
    .end local v0    # "v":Ljava/lang/String;
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public hasFileChanged()Z
    .registers 2

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    :try_start_1
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasChange:Z

    monitor-exit p0

    return v0

    .line 154
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    monitor-exit p0

    .line 170
    return-void

    .line 169
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public replace(Ljava/util/Map;)V
    .registers 3
    .param p1, "newContents"    # Ljava/util/Map;

    .prologue
    .line 158
    if-eqz p1, :cond_6

    .line 159
    monitor-enter p0

    .line 160
    :try_start_3
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 161
    monitor-exit p0

    .line 163
    :cond_6
    return-void

    .line 161
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setHasChange(Z)V
    .registers 3
    .param p1, "hasChange"    # Z

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_1
    iput-boolean p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasChange:Z

    .line 148
    monitor-exit p0

    .line 149
    return-void

    .line 148
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit p0

    .line 177
    return-void

    .line 176
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
