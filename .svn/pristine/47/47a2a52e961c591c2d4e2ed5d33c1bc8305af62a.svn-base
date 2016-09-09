.class Lcom/baidu/android/pushservice/i/a/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static c:Lcom/baidu/android/pushservice/i/a/b$b;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/i/a/b$b;->c:Lcom/baidu/android/pushservice/i/a/b$b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/a/b$b;->a:Landroid/content/Context;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    :try_start_f
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "os_name"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "manufacture"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "firmware"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "mem_size"

    invoke-static {}, Lcom/baidu/android/pushservice/i/a/b;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "screen_width"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/a/b$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i/a/b;->a(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "screen_height"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/a/b$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i/a/b;->a(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "cpu_model"

    invoke-static {}, Lcom/baidu/android/pushservice/i/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "cpu_feature"

    invoke-static {}, Lcom/baidu/android/pushservice/i/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "screen_density"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/a/b$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i/a/b;->a(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "wise_cuid"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/a/b$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/j/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b6
    const-string v0, "pst"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_mac_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cc

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_c9} :catch_126

    move-result v0

    if-nez v0, :cond_f8

    :cond_cc
    :try_start_cc
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f8

    const-string v0, "pst"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "push_mac_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_f8} :catch_108
    .catch Lorg/json/JSONException; {:try_start_cc .. :try_end_f8} :catch_126

    :cond_f8
    :goto_f8
    if-eqz v1, :cond_107

    :try_start_fa
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_107

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    const-string v2, "mac_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_107
    :goto_107
    return-void

    :catch_108
    move-exception v0

    const-string v2, "StatUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catch Lorg/json/JSONException; {:try_start_fa .. :try_end_125} :catch_126

    goto :goto_f8

    :catch_126
    move-exception v0

    const-string v1, "StatUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/a/b$b;
    .registers 3

    const-class v1, Lcom/baidu/android/pushservice/i/a/b$b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/i/a/b$b;->c:Lcom/baidu/android/pushservice/i/a/b$b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/android/pushservice/i/a/b$b;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/i/a/b$b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/i/a/b$b;->c:Lcom/baidu/android/pushservice/i/a/b$b;

    :cond_e
    sget-object v0, Lcom/baidu/android/pushservice/i/a/b$b;->c:Lcom/baidu/android/pushservice/i/a/b$b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a/b$b;->b:Lorg/json/JSONObject;

    return-object v0
.end method
