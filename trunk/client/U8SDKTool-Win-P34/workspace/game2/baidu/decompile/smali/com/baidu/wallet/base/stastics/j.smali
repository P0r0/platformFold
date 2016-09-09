.class Lcom/baidu/wallet/base/stastics/j;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/PhoneUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/PhoneUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/PhoneUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/PhoneUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/stastics/HeaderService;->a()Lcom/baidu/wallet/base/stastics/HeaderService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/stastics/HeaderService;->getMacID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->e:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/base/stastics/HeaderService;->a()Lcom/baidu/wallet/base/stastics/HeaderService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/stastics/HeaderService;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/base/stastics/HeaderService;->a()Lcom/baidu/wallet/base/stastics/HeaderService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/stastics/HeaderService;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->d:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/base/stastics/HeaderService;->a()Lcom/baidu/wallet/base/stastics/HeaderService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/stastics/HeaderService;->getAppUa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/base/stastics/HeaderService;->a()Lcom/baidu/wallet/base/stastics/HeaderService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/stastics/HeaderService;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->c:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-void

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_23

    const-string v0, "HeadObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** have been installHeader header="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_af

    :goto_21
    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    const-string v0, "HeadObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installHeader header="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/base/stastics/j;->a(Landroid/content/Context;)V
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_af

    :try_start_3e
    const-string v1, "head_ua"

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->b:Ljava/lang/String;

    if-nez v0, :cond_b2

    const-string v0, ""

    :goto_46
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "head_mac"

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->e:Ljava/lang/String;

    if-nez v0, :cond_b5

    const-string v0, ""

    :goto_51
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "head_cuid"

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->a:Ljava/lang/String;

    if-nez v0, :cond_b8

    const-string v0, ""

    :goto_5c
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "head_operator"

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->c:Ljava/lang/String;

    if-nez v0, :cond_bb

    const-string v0, ""

    :goto_67
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "head_linked_way"

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->d:Ljava/lang/String;

    if-nez v0, :cond_be

    const-string v0, ""

    :goto_72
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "head_product_id"

    const-string v1, "juhecashdesk"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "HeadObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*******"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_a0} :catch_a1
    .catchall {:try_start_3e .. :try_end_a0} :catchall_af

    goto :goto_21

    :catch_a1
    move-exception v0

    :try_start_a2
    const-string v0, "header ini error"

    const-string v1, "HeadObject"

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_af
    .catchall {:try_start_a2 .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b2
    :try_start_b2
    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->b:Ljava/lang/String;

    goto :goto_46

    :cond_b5
    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->e:Ljava/lang/String;

    goto :goto_51

    :cond_b8
    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->a:Ljava/lang/String;

    goto :goto_5c

    :cond_bb
    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->c:Ljava/lang/String;

    goto :goto_67

    :cond_be
    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/j;->d:Ljava/lang/String;
    :try_end_c0
    .catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_c0} :catch_a1
    .catchall {:try_start_b2 .. :try_end_c0} :catchall_af

    goto :goto_72
.end method
