.class public final Lcom/baidu/wallet/core/DebugConfig;
.super Ljava/lang/Object;


# static fields
.field public static DEFAULT_ENVIRONMENT:Ljava/lang/String; = null

.field public static final ENVIRONMENT_ONLINE:Ljava/lang/String; = "ONLINE"

.field public static final ENVIRONMENT_PRELINE:Ljava/lang/String; = "PRELINE"

.field public static final ENVIRONMENT_QA:Ljava/lang/String; = "QA"

.field public static final ENVIRONMENT_RD:Ljava/lang/String; = "RD"

.field public static LBS_HOST:Ljava/lang/String; = null

.field public static final PASS_COMPLETE_URL:Ljava/lang/String; = "pass_complete_url"

.field public static final PASS_COMPLETE_VERIFY:Ljava/lang/String; = "pass_complete_verify"

.field public static final SERVER_COMPLETE_VERIFY:Ljava/lang/String; = "http://wappass.baidu.com/v2/?bindingret"

.field public static final SERVER_PASS_COMPLETE_URL:Ljava/lang/String; = "http://wappass.baidu.com/v2/?bindingaccount"

.field public static final SERVICE:Ljava/lang/String; = "service"

.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Lcom/baidu/wallet/core/DebugConfig;


# instance fields
.field private i:Ljava/io/File;

.field private j:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/wallet/core/DebugConfig;->a:Z

    const-string v0, "ONLINE"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->DEFAULT_ENVIRONMENT:Ljava/lang/String;

    const-string v0, "https://www.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->b:Ljava/lang/String;

    const-string v0, "http://www.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->c:Ljava/lang/String;

    const-string v0, "http://wappass.baidu.com/passport"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->d:Ljava/lang/String;

    const-string v0, "https://life.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->e:Ljava/lang/String;

    const-string v0, "https://wallet.baidu.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->f:Ljava/lang/String;

    const-string v0, "https://zhifu.baidu.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->LBS_HOST:Ljava/lang/String;

    const-string v0, "https://www.baifubao.com/wireless/0/config?cate[plugin]&_app=wallet"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->g:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->h:Lcom/baidu/wallet/core/DebugConfig;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/DebugConfig;->i:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "wallet_config.properties"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/wallet/core/DebugConfig;->i:Ljava/io/File;

    invoke-direct {p0}, Lcom/baidu/wallet/core/DebugConfig;->b()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/DebugConfig;->j:Ljava/util/Properties;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/baidu/wallet/core/DebugConfig;->b()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/DebugConfig;->j:Ljava/util/Properties;

    iget-object v0, p0, Lcom/baidu/wallet/core/DebugConfig;->j:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 2

    const-string v0, "wallet_passport_host"

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/DebugConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->d:Ljava/lang/String;

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "http://wappass.baidu.com/passport/"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->d:Ljava/lang/String;

    :cond_14
    const-string v0, "wallet_http_host"

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/DebugConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->c:Ljava/lang/String;

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "http://www.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->c:Ljava/lang/String;

    :cond_28
    const-string v0, "wallet_https_host"

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/DebugConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->b:Ljava/lang/String;

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "https://www.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->b:Ljava/lang/String;

    :cond_3c
    const-string v0, "wallet_plugin_host"

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/DebugConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->g:Ljava/lang/String;

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "https://www.baifubao.com/wireless/0/config?cate[plugin]&_app=wallet"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->g:Ljava/lang/String;

    :cond_50
    const-string v0, "wallet_nfc_host"

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/DebugConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->e:Ljava/lang/String;

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "https://life.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->e:Ljava/lang/String;

    :cond_64
    const-string v0, "wallet_coupon_host"

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/DebugConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->f:Ljava/lang/String;

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "https://wallet.baidu.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->f:Ljava/lang/String;

    :cond_78
    return-void
.end method

.method private b()Ljava/util/Properties;
    .registers 6

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/baidu/wallet/core/DebugConfig;->i:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_16
    .catchall {:try_start_6 .. :try_end_d} :catchall_27

    :try_start_d
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_37
    .catchall {:try_start_d .. :try_end_10} :catchall_32

    if-eqz v0, :cond_15

    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_2e

    :cond_15
    :goto_15
    return-object v2

    :catch_16
    move-exception v0

    move-object v0, v1

    :goto_18
    :try_start_18
    const-string v1, "DebugConfig"

    const-string v3, "the wallet_config.properties is not exist!!"

    invoke-static {v1, v3}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_32

    if-eqz v0, :cond_15

    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_15

    :catch_25
    move-exception v0

    goto :goto_15

    :catchall_27
    move-exception v0

    :goto_28
    if-eqz v1, :cond_2d

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_30

    :cond_2d
    :goto_2d
    throw v0

    :catch_2e
    move-exception v0

    goto :goto_15

    :catch_30
    move-exception v1

    goto :goto_2d

    :catchall_32
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_28

    :catch_37
    move-exception v1

    goto :goto_18
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/wallet/core/DebugConfig;
    .registers 3

    const-class v1, Lcom/baidu/wallet/core/DebugConfig;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->h:Lcom/baidu/wallet/core/DebugConfig;

    if-nez v0, :cond_13

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->h:Lcom/baidu/wallet/core/DebugConfig;

    if-nez v0, :cond_13

    new-instance v0, Lcom/baidu/wallet/core/DebugConfig;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/baidu/wallet/core/DebugConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->h:Lcom/baidu/wallet/core/DebugConfig;

    :cond_13
    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->h:Lcom/baidu/wallet/core/DebugConfig;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;
    .registers 3

    const-class v1, Lcom/baidu/wallet/core/DebugConfig;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->h:Lcom/baidu/wallet/core/DebugConfig;

    if-nez v0, :cond_12

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->h:Lcom/baidu/wallet/core/DebugConfig;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/wallet/core/DebugConfig;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/DebugConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->h:Lcom/baidu/wallet/core/DebugConfig;

    :cond_12
    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->h:Lcom/baidu/wallet/core/DebugConfig;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public changeOnline()V
    .registers 2

    const-string v0, "https://www.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->b:Ljava/lang/String;

    const-string v0, "http://www.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->c:Ljava/lang/String;

    const-string v0, "http://wappass.baidu.com/passport/"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->d:Ljava/lang/String;

    const-string v0, "https://zhifu.baidu.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->LBS_HOST:Ljava/lang/String;

    const-string v0, "https://wallet.baidu.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->f:Ljava/lang/String;

    const-string v0, "ONLINE"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->DEFAULT_ENVIRONMENT:Ljava/lang/String;

    return-void
.end method

.method public changeQA()V
    .registers 2

    const-string v0, "https://cp01-qa-yun-009.cp01.baidu.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->b:Ljava/lang/String;

    const-string v0, "http://cp01-qa-yun-009.cp01.baidu.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->c:Ljava/lang/String;

    const-string v0, "http://wappass.qatest.baidu.com/passport/"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->d:Ljava/lang/String;

    const-string v0, "http://cp01-testing-wallet2014-04.cp01.baidu.com:8480"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->LBS_HOST:Ljava/lang/String;

    const-string v0, "QA"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->DEFAULT_ENVIRONMENT:Ljava/lang/String;

    return-void
.end method

.method public getCouponHost()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/baidu/wallet/core/DebugConfig;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "environment"

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/DebugConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->DEFAULT_ENVIRONMENT:Ljava/lang/String;

    goto :goto_a
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-boolean v0, Lcom/baidu/wallet/core/DebugConfig;->a:Z

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u6253\u5f00DEBUG\u5f00\u5173 \u8fd4\u56de\u9ed8\u8ba4\u503c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    :goto_1a
    return-object p2

    :cond_1b
    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/DebugConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u914d\u7f6e\u6587\u4ef6\u6ca1\u6709\u914d\u7f6e \u8fd4\u56de\u9ed8\u8ba4\u503c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    goto :goto_1a

    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd4\u56de\u914d\u7f6e\u6587\u4ef6\u7684\u503c value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_1a
.end method

.method public getWalletHttpHost()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletHttpsHost()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletNfcHost()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletPassportHost()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletPluginHost()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/DebugConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setDebugOn(Z)V
    .registers 3

    sput-boolean p1, Lcom/baidu/wallet/core/DebugConfig;->a:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/baidu/wallet/core/DebugConfig;->a()V

    :goto_7
    return-void

    :cond_8
    const-string v0, "https://www.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->b:Ljava/lang/String;

    const-string v0, "http://www.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->c:Ljava/lang/String;

    const-string v0, "http://wappass.baidu.com/passport/"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->d:Ljava/lang/String;

    const-string v0, "https://www.baifubao.com/wireless/0/config?cate[plugin]&_app=wallet"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->g:Ljava/lang/String;

    const-string v0, "https://life.baifubao.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->e:Ljava/lang/String;

    const-string v0, "https://wallet.baidu.com"

    sput-object v0, Lcom/baidu/wallet/core/DebugConfig;->f:Ljava/lang/String;

    goto :goto_7
.end method

.method public setWalletHttpsHost(Ljava/lang/String;)V
    .registers 2

    sput-object p1, Lcom/baidu/wallet/core/DebugConfig;->b:Ljava/lang/String;

    return-void
.end method
