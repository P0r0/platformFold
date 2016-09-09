.class public Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Lcom/vivo/sdkplugin/activity/fn;

.field public KITKAT_VALUE:I

.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;

.field private e:Lcom/vivo/sdkplugin/Utils/VivoGridView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/content/res/Resources;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/app/AlertDialog;

.field private o:I

.field private p:Landroid/os/HandlerThread;

.field private q:Lcom/vivo/sdkplugin/activity/fl;

.field private r:I

.field private s:Ljava/util/HashMap;

.field private t:Landroid/content/Context;

.field private u:Ljava/io/File;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/ImageView;

.field private y:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

.field private z:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b:I

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->l:Landroid/content/res/Resources;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->o:I

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->p:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->q:Lcom/vivo/sdkplugin/activity/fl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->r:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->z:Ljava/util/List;

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->KITKAT_VALUE:I

    new-instance v0, Lcom/vivo/sdkplugin/activity/fn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/fn;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->C:Lcom/vivo/sdkplugin/activity/fn;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/CharSequence;)I
    .registers 3

    invoke-static {p1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v1, v0

    :goto_8
    if-lt v1, v3, :cond_b

    :cond_a
    return v0

    :cond_b
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_8
.end method

.method private static a([BLjava/lang/String;)Ljava/io/File;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_52
    .catchall {:try_start_1 .. :try_end_6} :catchall_63

    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "feedback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6587\u4ef6\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e0d\u5b58\u5728\uff0c\u521b\u5efa\u4e00\u4e2a\uff01\uff01---------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    const-string v3, "feedback"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u521b\u5efa\u7ed3\u679c\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_48} :catch_77
    .catchall {:try_start_6 .. :try_end_48} :catchall_63

    :try_start_48
    invoke-virtual {v3, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4e} :catch_79
    .catchall {:try_start_48 .. :try_end_4e} :catchall_74

    :try_start_4e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_6f

    :cond_51
    :goto_51
    return-object v0

    :catch_52
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_55
    :try_start_55
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_63

    if-eqz v2, :cond_51

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_51

    :catch_5e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    :catchall_63
    move-exception v0

    :goto_64
    if-eqz v2, :cond_69

    :try_start_66
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    :cond_69
    :goto_69
    throw v0

    :catch_6a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    :catch_6f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    :catchall_74
    move-exception v0

    move-object v2, v3

    goto :goto_64

    :catch_77
    move-exception v1

    goto :goto_55

    :catch_79
    move-exception v1

    move-object v2, v3

    goto :goto_55
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 5

    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "feedback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkUtilities.getConnectionType(this)="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(I)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->p:Landroid/os/HandlerThread;

    if-nez v0, :cond_43

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.appanalysis.FeedBackHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->p:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/fl;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->p:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/fl;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->q:Lcom/vivo/sdkplugin/activity/fl;

    :cond_43
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(I)V

    :cond_4a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->q:Lcom/vivo/sdkplugin/activity/fl;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/fl;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->q:Lcom/vivo/sdkplugin/activity/fl;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/fl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_23
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->f()Ljava/util/List;

    move-result-object v2

    const-string v3, "feedback"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "thumbnail_map.size()="

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    :goto_18
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p0, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->uploadUserInfo(Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.connection.timeout"

    const/16 v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.socket.timeout"

    const/16 v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v1, ""

    :goto_66
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_dd

    const-string v3, "feedback"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---------------line: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feedback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mHttpResponse.getStatusLine()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_f0

    const-string v1, "feedback"

    const-string v2, "-----upload fail --------"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feedback"

    const-string v2, "\u7f51\u7edc\u4e0d\u597d\u5bfc\u81f4\u4e0a\u4f20\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0a\u4f20"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->g()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b1} :catch_106
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_b1} :catch_136
    .catchall {:try_start_1 .. :try_end_b1} :catchall_16b

    :goto_b1
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/io/File;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "pang"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "thumbnail_map.clear() done!size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    if-eqz v3, :cond_ce

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :cond_ce
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d9
    return-void

    :cond_da
    move v1, v0

    goto/16 :goto_18

    :cond_dd
    :try_start_dd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_66

    :cond_f0
    const-string v1, "feedback"

    const-string v2, "-----upload success --------"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->C:Lcom/vivo/sdkplugin/activity/fn;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/fn;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->C:Lcom/vivo/sdkplugin/activity/fn;

    invoke-virtual {v2, v1}, Lcom/vivo/sdkplugin/activity/fn;->sendMessage(Landroid/os/Message;)Z
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_105} :catch_106
    .catch Ljava/lang/OutOfMemoryError; {:try_start_dd .. :try_end_105} :catch_136
    .catchall {:try_start_dd .. :try_end_105} :catchall_16b

    goto :goto_b1

    :catch_106
    move-exception v1

    :try_start_107
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->g()V
    :try_end_10d
    .catchall {:try_start_107 .. :try_end_10d} :catchall_16b

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/io/File;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "pang"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "thumbnail_map.clear() done!size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    if-eqz v3, :cond_12a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :cond_12a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    :catch_136
    move-exception v1

    :try_start_137
    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->g()V

    const-string v1, "feedback"

    const-string v2, "out of Mem when upload"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_137 .. :try_end_141} :catchall_16b

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/io/File;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "pang"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "thumbnail_map.clear() done!size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    if-eqz v3, :cond_15e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :cond_15e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    :catchall_16b
    move-exception v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/io/File;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const-string v2, "pang"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "thumbnail_map.clear() done!size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    if-eqz v4, :cond_189

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :cond_189
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;I)V
    .registers 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    :try_start_2
    iget v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->r:I

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->r:I

    if-ne v1, v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->dismissDialog(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->r:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_10
.end method

.method private a(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_19

    array-length v0, v1

    if-nez v0, :cond_1d

    :cond_19
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    array-length v2, v1

    if-lt v0, v2, :cond_25

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_25
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method private a()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    const/16 v3, 0x28

    if-le v2, v3, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    goto :goto_19
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Landroid/widget/EditText;IZ)Z
    .registers 6

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/lang/CharSequence;)I

    move-result v0

    if-le v0, p2, :cond_1f

    const-string v0, "question_feedback_format_wrong"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method private a(Landroid/net/Uri;)[B
    .registers 8

    const/16 v0, 0x4b

    const-string v1, "feedback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--uri\u8f6c\u5b57\u8282\u6570\u7ec4--getComptrssImage()------: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "feedback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "srcPath: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_58
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    const/16 v4, 0x64

    if-gt v3, v4, :cond_7c

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "feedback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imgBytes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v0, v0, -0x5

    const-string v3, "pang"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "compress options = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_58
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    iput p1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->r:I

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->showDialog(I)V

    :cond_b
    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "feedback"

    const-string v1, "------------vivoLogin() enter------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->CHAT_SERVICE_URL:Ljava/lang/String;

    const/4 v5, 0x1

    new-instance v7, Lcom/vivo/sdkplugin/activity/fm;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/fm;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;B)V

    move-object v3, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;I)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->r:I

    return-void
.end method

.method private b()Z
    .registers 7

    const/16 v5, 0xb

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/lang/CharSequence;)I

    move-result v3

    if-eqz v3, :cond_2c

    const-string v4, "0"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "8"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_28
    const/16 v2, 0xc

    if-le v3, v2, :cond_2d

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    move v0, v1

    goto :goto_2c

    :cond_2f
    const-string v4, "1"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-gt v3, v5, :cond_2c

    if-lt v3, v5, :cond_2c

    move v0, v1

    goto :goto_2c
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    return-object v0
.end method

.method private c()Z
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_1a

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Lcom/vivo/sdkplugin/activity/fn;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->C:Lcom/vivo/sdkplugin/activity/fn;

    return-object v0
.end method

.method private d()Z
    .registers 6

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a()Z

    move-result v0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b()Z

    move-result v1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " email: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " phone: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " qq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a()Z

    move-result v0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e:Lcom/vivo/sdkplugin/Utils/VivoGridView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->getCount()I

    move-result v0

    const-string v1, "feedback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ------cihldCount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/4)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->x:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3e
    return-void

    :cond_3f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->x:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    return-object v0
.end method

.method private f()Ljava/util/List;
    .registers 10

    const-string v0, "feedback"

    const-string v1, "----imgfileList()---------- "

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "feedback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "----\u56fe\u7247temp\u76ee\u5f55img_dir:  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_40

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_42

    :cond_40
    move-object v0, v2

    :goto_41
    return-object v0

    :cond_42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "feedback"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "imageMap key: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " value: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " uri: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_86
    const-string v0, "feedback"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " img_dir exist: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v4, "feedback"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u76ee\u5f55\u521b\u5efa\u7ed3\u679c: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    invoke-direct {p0, v5}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Landroid/net/Uri;)[B

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a([BLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v4, "feedback"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "feedback"

    const-string v4, "add compressed picture"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_10f} :catch_111

    goto/16 :goto_3a

    :catch_111
    move-exception v0

    const-string v1, "feedback"

    const-string v2, "uri\u8f6cfile\u5931\u8d25\u4e86\uff01\uff01\uff01\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto/16 :goto_41
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b:I

    return v0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->C:Lcom/vivo/sdkplugin/activity/fn;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/fn;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->C:Lcom/vivo/sdkplugin/activity/fn;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/fn;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Lcom/vivo/sdkplugin/Utils/VivoGridView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e:Lcom/vivo/sdkplugin/Utils/VivoGridView;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e()V

    return-void
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 4

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->o:I

    return v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic r(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic s(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic t(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)I
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, -0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic u(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Z
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic v(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    move v0, v1

    :goto_33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    move v3, v1

    :goto_3a
    or-int/2addr v3, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_42
    or-int/2addr v0, v3

    if-eqz v0, :cond_4c

    :goto_45
    return v1

    :cond_46
    move v0, v2

    goto :goto_33

    :cond_48
    move v3, v2

    goto :goto_3a

    :cond_4a
    move v0, v2

    goto :goto_42

    :cond_4c
    move v1, v2

    goto :goto_45
.end method

.method static synthetic w(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic x(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(I)V

    return-void
.end method


# virtual methods
.method public getBeforeBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_18

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_12

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public getBitmapSize(Landroid/graphics/Bitmap;)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_a
.end method

.method public getBitmaplength(Landroid/net/Uri;)I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_15

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_f

    :catch_15
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/16 v4, 0x400

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_6a

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "-------------uri = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getBitmaplength(Landroid/net/Uri;)I

    move-result v3

    if-ge v3, v4, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "B"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "----------------------length: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const/high16 v0, 0xa00000

    if-lt v3, v0, :cond_bd

    const-string v0, "vivo_feedback_larger_bmp"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    div-int/lit16 v0, v3, 0x400

    if-ge v0, v4, :cond_85

    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit16 v4, v3, 0x400

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "KB"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_85
    div-int/lit16 v0, v3, 0x400

    div-int/lit16 v0, v0, 0x400

    if-ge v0, v4, :cond_a3

    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit16 v4, v3, 0x400

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "MB"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit16 v4, v3, 0x400

    div-int/lit16 v4, v4, 0x400

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "GB"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_bd
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    const-string v2, "toast6"

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6a

    :cond_d5
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "feedback"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "----------------------thumbnail_map: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_ed
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/model/MFeedImageInfo;

    invoke-direct {v0}, Lcom/vivo/sdkplugin/model/MFeedImageInfo;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->setUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e:Lcom/vivo/sdkplugin/Utils/VivoGridView;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->addData(Lcom/vivo/sdkplugin/model/MFeedImageInfo;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e()V

    goto/16 :goto_6a

    :cond_10f
    move v0, v1

    goto :goto_ed
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_user_feedback"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->l:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_login_total_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_content_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->B:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->B:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->hideKeyboradListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->hideKeyboradListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_chat_service_msg"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_feed_text_count"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_img_count"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->w:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_feed_img_add"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->x:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->x:Landroid/widget/ImageView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/eU;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eU;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->y:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->y:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fd;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fd;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->setOnFeedImageListener(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter$OnFeedImageListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->w:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fe;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fe;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->v:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ff;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ff;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "feedback_info"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "tel_info"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "qq_info"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "mail_info"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "submit"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "shotcut_zone"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/Utils/VivoGridView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e:Lcom/vivo/sdkplugin/Utils/VivoGridView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e:Lcom/vivo/sdkplugin/Utils/VivoGridView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->y:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->setAdapter(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->l:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "indicator_input_error"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fg;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fg;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fh;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fh;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fi;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fi;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fj;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fj;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fk;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fk;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/eV;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eV;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/eW;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eW;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/eX;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eX;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/shotcut_tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_235

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/io/File;)V

    :cond_235
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->u:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(I)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    iput p1, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->r:I

    sparse-switch p1, :sswitch_data_3c

    :goto_5
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_9
    return-object v0

    :sswitch_a
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_sending_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/activity/fb;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fb;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_9

    :sswitch_28
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/fc;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fc;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_5

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_a
        0x64 -> :sswitch_28
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e:Lcom/vivo/sdkplugin/Utils/VivoGridView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->removeAllViews()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e:Lcom/vivo/sdkplugin/Utils/VivoGridView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->onDestroy()V

    return-void
.end method

.method public showNetWorkSettingDialog(II)V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "net_setting"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/activity/eY;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/eY;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "cancle"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/activity/eZ;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/eZ;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fa;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fa;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->n:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->n:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public uploadUserInfo(Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;
    .registers 14

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    sget-object v0, Lcom/vivo/sdkplugin/Contants;->USER_PRIVATE_PROTOCOL_URL:Ljava/lang/String;

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v7, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v7}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1e8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v0

    :goto_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11f

    :goto_1d
    const-string v0, "pang"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "img totalSize = "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_152

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/vivo/sdkplugin/Utils/CurrentVersionUtil;->getSysVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_59

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_146

    :cond_59
    const-string v3, "imei"

    new-instance v8, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v9, "012345678987654"

    invoke-direct {v8, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    :goto_65
    const-string v3, "model"

    new-instance v8, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v8, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    const-string v3, "sysver"

    new-instance v8, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v8, v2}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    const-string v3, "pang"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sysver = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ver"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v8, "1.0.0"

    invoke-direct {v3, v8}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    const-string v2, "feedback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "general information, mimi code is "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "feedback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "general information, model number is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c1
    const-string v1, "nt"

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->t:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_164

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_15b

    const/4 v0, 0x0

    :goto_dc
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    const-string v0, "elapsedtime"

    new-instance v1, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_167

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c:Landroid/widget/EditText;

    const-string v1, "feedback_format_empty"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v5

    :goto_11e
    return-object v0

    :cond_11f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v1, Lorg/apache/http/entity/mime/content/InputStreamBody;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v9, "imgs"

    invoke-virtual {v7, v9, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto/16 :goto_17

    :cond_146
    const-string v3, "imei"

    new-instance v8, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v8, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto/16 :goto_65

    :cond_152
    const-string v0, "feedback"

    const-string v1, "appendGreneralInfomation, can not get TelephonyManager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1

    :cond_15b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v4, :cond_164

    move v0, v4

    goto/16 :goto_dc

    :cond_164
    const/4 v0, -0x1

    goto/16 :goto_dc

    :cond_167
    const/16 v2, 0x258

    if-le v1, v2, :cond_17e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c:Landroid/widget/EditText;

    const-string v1, "question_feedback_format_wrong"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v5

    goto :goto_11e

    :cond_17e
    const-string v1, "origin"

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v3, "1"

    invoke-direct {v2, v3}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    const-string v1, "description"

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1e2

    const-string v0, "telNum"

    new-instance v1, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    const-string v0, "qq"

    new-instance v1, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    const-string v0, "email"

    new-instance v1, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    :cond_1e2
    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v0, v6

    goto/16 :goto_11e

    :cond_1e8
    move-wide v2, v0

    goto/16 :goto_1d
.end method
