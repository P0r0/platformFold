.class public final Lcom/alipay/sdk/auth/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final b:I = 0x41

.field private static c:Lcom/alipay/sdk/widget/a;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 79
    sput-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    .line 80
    sput-object v0, Lcom/alipay/sdk/auth/h;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/alipay/sdk/widget/a;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lcom/alipay/sdk/auth/h;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
    .registers 6

    .prologue
    .line 55
    invoke-static {p0}, Lcom/alipay/sdk/auth/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alipayauth://platformapi/startapp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?appId=20000122"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&approveType=005"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&scope=kuaijie"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&thirdpartyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&redirectUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    :goto_4a
    return-void

    .line 58
    :cond_4b
    if-eqz p0, :cond_68

    :try_start_4d
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_68

    new-instance v0, Lcom/alipay/sdk/widget/a;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/data/d;->a()Lcom/alipay/sdk/data/d;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;Lcom/alipay/sdk/data/d;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_68} :catch_ef

    :cond_68
    :goto_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&partner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&scope=kuaijie"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&login_goal=auth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&redirect_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&view=wap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&prod_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/alipay/sdk/data/c;

    invoke-direct {v1}, Lcom/alipay/sdk/data/c;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/data/b;->a(Lcom/alipay/sdk/data/c;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/data/e;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v2, "com.alipay.mobilecashier"

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v2, "com.alipay.mcpay"

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v2, "4.0.0"

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v2, "/cashier/main"

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    new-instance v1, Lcom/alipay/sdk/net/d;

    new-instance v2, Lcom/alipay/sdk/data/c;

    invoke-direct {v2}, Lcom/alipay/sdk/data/c;-><init>()V

    invoke-direct {v1, v2}, Lcom/alipay/sdk/net/d;-><init>(Lcom/alipay/sdk/data/c;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/sdk/auth/i;

    invoke-direct {v3, v1, p0, v0, p1}, Lcom/alipay/sdk/auth/i;-><init>(Lcom/alipay/sdk/net/d;Landroid/app/Activity;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/auth/APAuthInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4a

    :catch_ef
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    goto/16 :goto_68
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 176
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    .line 182
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 40
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 41
    const-string v2, "com.eg.android.AlipayGphone"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 43
    if-nez v1, :cond_10

    .line 51
    :cond_f
    :goto_f
    return v0

    .line 45
    :cond_10
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_12} :catch_18

    .line 46
    const/16 v2, 0x41

    if-lt v1, v2, :cond_f

    .line 51
    const/4 v0, 0x1

    goto :goto_f

    .line 49
    :catch_18
    move-exception v1

    goto :goto_f
.end method

.method static synthetic b()Lcom/alipay/sdk/widget/a;
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    return-object v0
.end method

.method private static b(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
    .registers 4

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v1, "alipayauth://platformapi/startapp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "?appId=20000122"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "&approveType=005"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "&scope=kuaijie"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "&productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "&thirdpartyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "&redirectUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/sdk/auth/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
    .registers 6

    .prologue
    .line 85
    if-eqz p0, :cond_1d

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 86
    new-instance v0, Lcom/alipay/sdk/widget/a;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;)V

    .line 87
    sput-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    .line 88
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/data/d;->a()Lcom/alipay/sdk/data/d;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;Lcom/alipay/sdk/data/d;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_a3

    .line 94
    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v1, "app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "&partner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "&scope=kuaijie"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "&login_goal=auth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "&redirect_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "&view=wap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "&prod_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Lcom/alipay/sdk/auth/APAuthInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v1, Lcom/alipay/sdk/data/c;

    invoke-direct {v1}, Lcom/alipay/sdk/data/c;-><init>()V

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 107
    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/data/b;->a(Lcom/alipay/sdk/data/c;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/data/e;

    move-result-object v0

    .line 109
    iget-object v1, v0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v2, "com.alipay.mobilecashier"

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    .line 110
    iget-object v1, v0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v2, "com.alipay.mcpay"

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->e:Ljava/lang/String;

    .line 111
    iget-object v1, v0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v2, "4.0.0"

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    .line 112
    iget-object v1, v0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v2, "/cashier/main"

    iput-object v2, v1, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    .line 113
    new-instance v1, Lcom/alipay/sdk/net/d;

    new-instance v2, Lcom/alipay/sdk/data/c;

    invoke-direct {v2}, Lcom/alipay/sdk/data/c;-><init>()V

    invoke-direct {v1, v2}, Lcom/alipay/sdk/net/d;-><init>(Lcom/alipay/sdk/data/c;)V

    .line 116
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/sdk/auth/i;

    invoke-direct {v3, v1, p0, v0, p1}, Lcom/alipay/sdk/auth/i;-><init>(Lcom/alipay/sdk/net/d;Landroid/app/Activity;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/auth/APAuthInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 172
    return-void

    .line 91
    :catch_a3
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    goto/16 :goto_1d
.end method
