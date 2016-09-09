.class public Lcom/baidu/android/pushservice/richmedia/a;
.super Ljava/lang/Thread;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Thread;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/android/pushservice/richmedia/a;",
        ">;"
    }
.end annotation


# static fields
.field public static e:I

.field public static f:I

.field private static g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/baidu/android/pushservice/richmedia/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/baidu/android/pushservice/richmedia/o;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected c:J

.field public d:Lcom/baidu/android/pushservice/richmedia/l;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/richmedia/a;->g:Ljava/util/HashSet;

    const/4 v0, 0x1

    sput v0, Lcom/baidu/android/pushservice/richmedia/a;->e:I

    const/4 v0, 0x2

    sput v0, Lcom/baidu/android/pushservice/richmedia/a;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/android/pushservice/richmedia/o;Lcom/baidu/android/pushservice/richmedia/l;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->h:Z

    iput-object p2, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->b:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->c:J

    iput-object p3, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_2f

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    const-string v1, "HttpTaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    const/4 v0, 0x0

    goto :goto_f

    :catch_2f
    move-exception v0

    const-string v1, "HttpTaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/util/n$g;
    .registers 6

    invoke-static {p1}, Lcom/baidu/android/pushservice/util/n;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_27

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/util/n$g;

    iget-object v0, v0, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/util/n$g;

    :goto_22
    return-object v0

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_27
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private a(Lcom/baidu/android/pushservice/richmedia/n;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_62

    if-eqz v0, :cond_6

    if-nez p1, :cond_c

    :cond_6
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-static {v0}, Lcom/baidu/android/pushservice/richmedia/a;->b(Lcom/baidu/android/pushservice/richmedia/l;)Z

    :goto_b
    return-void

    :cond_c
    :try_start_c
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    if-nez v0, :cond_3d

    iget-object v0, p1, Lcom/baidu/android/pushservice/richmedia/n;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/android/pushservice/richmedia/n;->a:Lcom/baidu/android/pushservice/richmedia/l$a;

    sget-object v2, Lcom/baidu/android/pushservice/richmedia/l$a;->a:Lcom/baidu/android/pushservice/richmedia/l$a;

    if-ne v1, v2, :cond_32

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/richmedia/a;->a(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iput-object v1, p1, Lcom/baidu/android/pushservice/richmedia/n;->e:Ljava/lang/String;

    :cond_32
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    invoke-interface {v0, p0, p1}, Lcom/baidu/android/pushservice/richmedia/o;->a(Lcom/baidu/android/pushservice/richmedia/a;Lcom/baidu/android/pushservice/richmedia/n;)V
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_62

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-static {v0}, Lcom/baidu/android/pushservice/richmedia/a;->b(Lcom/baidu/android/pushservice/richmedia/l;)Z

    goto :goto_b

    :cond_3d
    :try_start_3d
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: response http error errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/baidu/android/pushservice/richmedia/n;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/baidu/android/pushservice/richmedia/o;->a(Lcom/baidu/android/pushservice/richmedia/a;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_3d .. :try_end_61} :catchall_62

    goto :goto_37

    :catchall_62
    move-exception v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-static {v1}, Lcom/baidu/android/pushservice/richmedia/a;->b(Lcom/baidu/android/pushservice/richmedia/l;)Z

    throw v0

    :cond_69
    :try_start_69
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7b

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "error: request error,request is null or fileName is null."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/baidu/android/pushservice/richmedia/o;->a(Lcom/baidu/android/pushservice/richmedia/a;Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_7b
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_86

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    invoke-interface {v0, p0}, Lcom/baidu/android/pushservice/richmedia/o;->b(Lcom/baidu/android/pushservice/richmedia/a;)V

    goto :goto_37

    :cond_86
    iget v0, p1, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "IOException"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/baidu/android/pushservice/richmedia/o;->a(Lcom/baidu/android/pushservice/richmedia/a;Ljava/lang/Throwable;)V
    :try_end_97
    .catchall {:try_start_69 .. :try_end_97} :catchall_62

    goto :goto_37
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 14

    const/16 v8, 0x1000

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_7
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_138
    .catchall {:try_start_7 .. :try_end_c} :catchall_101

    :try_start_c
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_13d
    .catchall {:try_start_c .. :try_end_11} :catchall_11d

    :try_start_11
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_142
    .catchall {:try_start_11 .. :try_end_16} :catchall_123

    move-object v1, v2

    move-object v2, v3

    :cond_18
    :goto_18
    :try_start_18
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_ac
    .catchall {:try_start_18 .. :try_end_1b} :catchall_12c

    move-result-object v3

    if-eqz v3, :cond_eb

    :try_start_1e
    const-string v0, "DownloadCompleteReceiver: "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unzip----="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v6, v8, [B

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_49

    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_49
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget-object v0, v0, v11

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_82

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_82
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    :cond_8b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_90} :catch_148
    .catchall {:try_start_1e .. :try_end_90} :catchall_12c

    :try_start_90
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_95} :catch_14b
    .catchall {:try_start_90 .. :try_end_95} :catchall_12e

    :goto_95
    const/4 v0, 0x0

    :try_start_96
    invoke-virtual {v5, v6, v0, v8}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e4

    const/4 v1, 0x0

    invoke-virtual {v2, v6, v1, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a1} :catch_a2
    .catchall {:try_start_96 .. :try_end_a1} :catchall_128

    goto :goto_95

    :catch_a2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_a5
    :try_start_a5
    const-string v3, "HttpTaskThread"

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_aa} :catch_ac
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_12c

    goto/16 :goto_18

    :catch_ac
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, v7

    :goto_b2
    :try_start_b2
    const-string v6, "HttpTaskThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_b2 .. :try_end_ce} :catchall_131

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    :goto_e3
    return-void

    :cond_e4
    :try_start_e4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_a2
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_128

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_18

    :cond_eb
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v7, v0, v3

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto :goto_e3

    :catchall_101
    move-exception v0

    move-object v5, v6

    move-object v7, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    :goto_107
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    aput-object v2, v3, v5

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const/4 v1, 0x4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_11d
    move-exception v0

    move-object v4, v1

    move-object v5, v6

    move-object v1, v2

    move-object v2, v3

    goto :goto_107

    :catchall_123
    move-exception v0

    move-object v1, v2

    move-object v5, v6

    move-object v2, v3

    goto :goto_107

    :catchall_128
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_107

    :catchall_12c
    move-exception v0

    goto :goto_107

    :catchall_12e
    move-exception v0

    move-object v2, v3

    goto :goto_107

    :catchall_131
    move-exception v0

    move-object v7, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_107

    :catch_138
    move-exception v0

    move-object v5, v4

    move-object v4, v6

    goto/16 :goto_b2

    :catch_13d
    move-exception v0

    move-object v4, v6

    move-object v5, v7

    goto/16 :goto_b2

    :catch_142
    move-exception v0

    move-object v1, v4

    move-object v5, v7

    move-object v4, v6

    goto/16 :goto_b2

    :catch_148
    move-exception v0

    goto/16 :goto_a5

    :catch_14b
    move-exception v0

    move-object v2, v3

    goto/16 :goto_a5
.end method

.method private static declared-synchronized a(Lcom/baidu/android/pushservice/richmedia/l;)Z
    .registers 3

    const-class v1, Lcom/baidu/android/pushservice/richmedia/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/richmedia/a;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/baidu/android/pushservice/richmedia/n;
    .registers 12

    const/4 v10, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/baidu/android/pushservice/richmedia/n;

    invoke-direct {v2}, Lcom/baidu/android/pushservice/richmedia/n;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    iput-object v1, v2, Lcom/baidu/android/pushservice/richmedia/n;->d:Lcom/baidu/android/pushservice/richmedia/l;

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    if-eqz v1, :cond_1d2

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/richmedia/l;->a()Lcom/baidu/android/pushservice/richmedia/l$a;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/android/pushservice/richmedia/n;->a:Lcom/baidu/android/pushservice/richmedia/l$a;

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    iget-object v1, v1, Lcom/baidu/android/pushservice/richmedia/l;->b:Ljava/lang/String;

    if-eqz v1, :cond_267

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-static {v1}, Lcom/baidu/android/pushservice/richmedia/a;->a(Lcom/baidu/android/pushservice/richmedia/l;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "HttpTaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/richmedia/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed, already in queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    iput-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    :goto_4e
    return-object v0

    :cond_4f
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/richmedia/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/android/pushservice/richmedia/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/util/n$g;

    move-result-object v0

    if-nez v0, :cond_e8

    new-instance v1, Lcom/baidu/android/pushservice/util/n$g;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/util/n$g;-><init>()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/richmedia/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/richmedia/l;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/n$g;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/richmedia/l;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/n$g;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/richmedia/l;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/n$g;->d:Ljava/lang/String;

    iput v5, v1, Lcom/baidu/android/pushservice/util/n$g;->g:I

    iget-object v0, v1, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/richmedia/a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/android/pushservice/util/n$g;->h:I

    sget v0, Lcom/baidu/android/pushservice/richmedia/a;->e:I

    iput v0, v1, Lcom/baidu/android/pushservice/util/n$g;->i:I

    iget-object v0, v1, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/n$g;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/richmedia/l;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/util/n$g;->e:Ljava/lang/String;

    :try_start_a8
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/n$g;)J
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b3} :catch_df

    :goto_b3
    iget v0, v1, Lcom/baidu/android/pushservice/util/n$g;->i:I

    sget v3, Lcom/baidu/android/pushservice/richmedia/a;->f:I

    if-ne v0, v3, :cond_f2

    iput v5, v2, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    iput-object v0, v2, Lcom/baidu/android/pushservice/richmedia/n;->d:Lcom/baidu/android/pushservice/richmedia/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/baidu/android/pushservice/util/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/richmedia/n;->e:Ljava/lang/String;

    move-object v0, v2

    goto/16 :goto_4e

    :catch_df
    move-exception v0

    const-string v0, "HttpTaskThread"

    const-string v3, "HttpTask insertFileDownloadingInfo"

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_e8
    iget-object v1, v0, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/android/pushservice/richmedia/a;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/android/pushservice/util/n$g;->h:I

    move-object v1, v0

    goto :goto_b3

    :cond_f2
    const-string v0, "HttpTaskThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/richmedia/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    invoke-interface {v0, p0}, Lcom/baidu/android/pushservice/richmedia/o;->a(Lcom/baidu/android/pushservice/richmedia/a;)V

    :cond_11f
    :try_start_11f
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/richmedia/l;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/richmedia/l;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    iget-object v4, v4, Lcom/baidu/android/pushservice/richmedia/l;->f:Ljava/util/HashMap;

    invoke-static {v0, v3, v4}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/f/b;->b()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_25c

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/f/b;->a()Ljava/io/InputStream;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->e:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_14f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_14f
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_178

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_178
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v6, v5, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v0, v1, Lcom/baidu/android/pushservice/util/n$g;->g:I

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    const v0, 0x19000

    new-array v0, v0, [B

    iget v3, v1, Lcom/baidu/android/pushservice/util/n$g;->g:I

    new-instance v7, Lcom/baidu/android/pushservice/richmedia/k;

    invoke-direct {v7}, Lcom/baidu/android/pushservice/richmedia/k;-><init>()V

    iget v8, v1, Lcom/baidu/android/pushservice/util/n$g;->h:I

    int-to-long v8, v8

    iput-wide v8, v7, Lcom/baidu/android/pushservice/richmedia/k;->b:J

    int-to-long v8, v3

    iput-wide v8, v7, Lcom/baidu/android/pushservice/richmedia/k;->a:J

    invoke-virtual {p0, v7}, Lcom/baidu/android/pushservice/richmedia/a;->a(Lcom/baidu/android/pushservice/richmedia/k;)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_19c} :catch_219

    :cond_19c
    :try_start_19c
    iget-boolean v7, p0, Lcom/baidu/android/pushservice/richmedia/a;->h:Z

    if-nez v7, :cond_1a6

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_1a3} :catch_1ef
    .catchall {:try_start_19c .. :try_end_1a3} :catchall_239

    move-result v7

    if-ne v7, v10, :cond_1d5

    :cond_1a6
    :goto_1a6
    const/4 v0, 0x2

    :try_start_1a7
    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v7, 0x0

    aput-object v4, v0, v7

    const/4 v4, 0x1

    aput-object v6, v0, v4

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    :goto_1b2
    iget-boolean v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->h:Z

    if-nez v0, :cond_247

    iput v3, v1, Lcom/baidu/android/pushservice/util/n$g;->g:I

    sget v0, Lcom/baidu/android/pushservice/richmedia/a;->f:I

    iput v0, v1, Lcom/baidu/android/pushservice/util/n$g;->i:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pushservice/util/n$g;)I

    const/4 v0, 0x0

    iput v0, v2, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/richmedia/n;->e:Ljava/lang/String;
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1d2} :catch_219

    :cond_1d2
    :goto_1d2
    move-object v0, v2

    goto/16 :goto_4e

    :cond_1d5
    const/4 v8, 0x0

    :try_start_1d6
    invoke-virtual {v6, v0, v8, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v3, v7

    new-instance v7, Lcom/baidu/android/pushservice/richmedia/k;

    invoke-direct {v7}, Lcom/baidu/android/pushservice/richmedia/k;-><init>()V

    iget v8, v1, Lcom/baidu/android/pushservice/util/n$g;->h:I

    int-to-long v8, v8

    iput-wide v8, v7, Lcom/baidu/android/pushservice/richmedia/k;->b:J

    int-to-long v8, v3

    iput-wide v8, v7, Lcom/baidu/android/pushservice/richmedia/k;->a:J

    invoke-virtual {p0, v7}, Lcom/baidu/android/pushservice/richmedia/a;->a(Lcom/baidu/android/pushservice/richmedia/k;)V

    iget v7, v1, Lcom/baidu/android/pushservice/util/n$g;->h:I
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1ec} :catch_1ef
    .catchall {:try_start_1d6 .. :try_end_1ec} :catchall_239

    if-ne v3, v7, :cond_19c

    goto :goto_1a6

    :catch_1ef
    move-exception v0

    :try_start_1f0
    const-string v7, "HttpTaskThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20c
    .catchall {:try_start_1f0 .. :try_end_20c} :catchall_239

    const/4 v0, 0x2

    :try_start_20d
    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v7, 0x0

    aput-object v4, v0, v7

    const/4 v4, 0x1

    aput-object v6, v0, v4

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_218} :catch_219

    goto :goto_1b2

    :catch_219
    move-exception v0

    const-string v1, "HttpTaskThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download file Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v10, v2, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    goto :goto_1d2

    :catchall_239
    move-exception v0

    const/4 v1, 0x2

    :try_start_23b
    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v6, v1, v3

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v0

    :cond_247
    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, v1, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/n;->b(Landroid/content/Context;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, v2, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_1d2

    :cond_25c
    const/4 v1, 0x1

    iput v1, v2, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/f/b;->b()I

    move-result v0

    iput v0, v2, Lcom/baidu/android/pushservice/richmedia/n;->b:I
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_265} :catch_219

    goto/16 :goto_1d2

    :cond_267
    const-string v0, "HttpTaskThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download file Request error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/richmedia/a;->d:Lcom/baidu/android/pushservice/richmedia/l;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, v2, Lcom/baidu/android/pushservice/richmedia/n;->c:I

    goto/16 :goto_1d2
.end method

.method private static declared-synchronized b(Lcom/baidu/android/pushservice/richmedia/l;)Z
    .registers 3

    const-class v1, Lcom/baidu/android/pushservice/richmedia/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/richmedia/a;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/richmedia/a;)I
    .registers 8

    const/4 v0, -0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/android/pushservice/richmedia/a;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/android/pushservice/richmedia/a;->c:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_3

    iget-wide v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_3

    :cond_16
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->c:J

    return-wide v0
.end method

.method protected a(Lcom/baidu/android/pushservice/richmedia/k;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/a;->a:Lcom/baidu/android/pushservice/richmedia/o;

    invoke-interface {v0, p0, p1}, Lcom/baidu/android/pushservice/richmedia/o;->a(Lcom/baidu/android/pushservice/richmedia/a;Lcom/baidu/android/pushservice/richmedia/k;)V

    :cond_9
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/baidu/android/pushservice/richmedia/a;

    invoke-virtual {p0, p1}, Lcom/baidu/android/pushservice/richmedia/a;->a(Lcom/baidu/android/pushservice/richmedia/a;)I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/android/pushservice/richmedia/a;->b()Lcom/baidu/android/pushservice/richmedia/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/richmedia/a;->a(Lcom/baidu/android/pushservice/richmedia/n;)V

    return-void
.end method
