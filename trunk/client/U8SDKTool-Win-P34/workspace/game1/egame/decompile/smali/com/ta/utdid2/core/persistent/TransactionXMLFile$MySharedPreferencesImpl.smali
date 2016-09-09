.class final Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mContent:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .registers 5

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasChange:Z

    .line 139
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 140
    # invokes: Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {p1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->access$000(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 141
    iput p2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMode:I

    .line 142
    if-eqz p3, :cond_1c

    :goto_12
    iput-object p3, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 144
    return-void

    .line 142
    :cond_1c
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_12
.end method

.method static synthetic access$200(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Z
    .registers 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->writeFileLocked()Z

    move-result v0

    return v0
.end method

.method private createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 355
    .line 357
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_7

    .line 368
    :goto_6
    return-object v0

    .line 359
    :catch_7
    move-exception v0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_14

    move-object v0, v1

    .line 361
    goto :goto_6

    .line 364
    :cond_14
    :try_start_14
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_6

    :catch_1a
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method private writeFileLocked()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 375
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 376
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 410
    :cond_1b
    :goto_1b
    return v0

    .line 380
    :cond_1c
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 390
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_1b

    .line 394
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/ta/utdid2/core/persistent/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 395
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 398
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_36} :catch_47
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_36} :catch_38

    .line 399
    const/4 v0, 0x1

    goto :goto_1b

    :catch_38
    move-exception v1

    .line 404
    :goto_39
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 405
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1b

    .line 402
    :catch_47
    move-exception v1

    goto :goto_39
.end method


# virtual methods
.method public final checkFile()Z
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    if-eqz v0, :cond_17

    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 150
    const/4 v0, 0x1

    .line 153
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final contains(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    return v0

    .line 235
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .registers 2

    .prologue
    .line 351
    new-instance v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;-><init>(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)V

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
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
    .line 191
    monitor-enter p0

    .line 193
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    return-object v0

    .line 194
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 228
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    return p2

    .line 229
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .registers 4

    .prologue
    .line 219
    monitor-enter p0

    .line 220
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 221
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    return p2

    .line 222
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 207
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    return p2

    .line 208
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 212
    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 214
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    return-wide p2

    .line 215
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    if-eqz v0, :cond_d

    :goto_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    return-object v0

    :cond_d
    move-object v0, p2

    goto :goto_b

    .line 201
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hasFileChanged()Z
    .registers 2

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_1
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasChange:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    return v0

    .line 165
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final registerOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4

    .prologue
    .line 178
    monitor-enter p0

    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final replace(Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 169
    if-eqz p1, :cond_6

    .line 170
    monitor-enter p0

    .line 171
    :try_start_3
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 172
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 174
    :cond_6
    return-void

    .line 172
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setHasChange(Z)V
    .registers 3

    .prologue
    .line 157
    monitor-enter p0

    .line 158
    :try_start_1
    iput-boolean p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasChange:Z

    .line 159
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
