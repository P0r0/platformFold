.class public Lcom/unionpay/sdk/UPAgent;
.super Ljava/lang/Object;


# static fields
.field public static LOG_ON:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/unionpay/sdk/r;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static final getNFCStatus()I
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-nez v0, :cond_6

    :goto_5
    return v1

    :cond_6
    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v2, "nfc"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1d
    move v1, v0

    goto :goto_5

    :cond_1f
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x3

    goto :goto_1d

    :cond_37
    const/4 v0, 0x2

    goto :goto_1d

    :cond_39
    move v0, v1

    goto :goto_1d
.end method

.method public static final init(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/unionpay/sdk/UPAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/unionpay/sdk/UPAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/unionpay/sdk/r;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/unionpay/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final onPause(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/unionpay/sdk/r;->c(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final onResume(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/unionpay/sdk/r;->b(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final onResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/unionpay/sdk/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final removeGlobalKV(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v0, :cond_1a

    if-eqz p0, :cond_1a

    const-string v0, "unionpayLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeGlobalKV# key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    sget-object v0, Lcom/unionpay/sdk/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final setAdditionalVersionNameAndCode(Ljava/lang/String;J)V
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/unionpay/sdk/r;->a(Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static final setAgentOption(I)V
    .registers 4

    sget-boolean v0, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v0, :cond_18

    const-string v0, "unionpayLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AgentOption.AO_Current = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    sput p0, Lcom/unionpay/sdk/AgentOption;->a:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2f

    invoke-static {}, Lcom/unionpay/sdk/ar;->c()Lcom/unionpay/sdk/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/sdk/ar;->d()V

    sget-boolean v0, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v0, :cond_2f

    const-string v0, "unionpayLog"

    const-string v1, "Cleared local cache."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public static final setGlobalKV(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    sget-boolean v0, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v0, :cond_2a

    if-eqz p0, :cond_2a

    if-eqz p1, :cond_2a

    const-string v0, "unionpayLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setGlobalKV# key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    sget-object v0, Lcom/unionpay/sdk/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final setReportUncaughtExceptions(Z)V
    .registers 4

    :try_start_0
    sput-boolean p0, Lcom/unionpay/sdk/ad;->b:Z

    sget-boolean v0, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v0, :cond_1a

    const-string v0, "unionpayLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PreSettings] setReportUncaughtExceptions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method
