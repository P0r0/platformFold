.class public final Lcom/baidu/scancode/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/scancode/b/a;->a:I

    const-string v0, ""

    sput-object v0, Lcom/baidu/scancode/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;)I
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v2, p0, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;->easypay:[Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;

    iget-object v3, p0, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;->balance:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo$BalanceInfo;

    if-eqz v3, :cond_20

    const-string v4, "1"

    iget-object v5, v3, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo$BalanceInfo;->enabled:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "1"

    iget-object v3, v3, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo$BalanceInfo;->selected:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_20
    if-eqz v2, :cond_5

    array-length v3, v2

    :goto_23
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    if-eqz v4, :cond_40

    const-string v5, "1"

    iget-object v6, v4, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;->selected:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    const-string v5, "1"

    iget-object v4, v4, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;->enabled:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_40
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "o2o_service.preferences"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_pay_type_info"

    const-string v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    :try_start_2a
    const-class v2, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_32} :catch_33

    :goto_32
    return-object v0

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_37
    move-object v0, v1

    goto :goto_32
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/api/BaiduWallet;->getPassUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/pay/SafePay;->localEncryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "ScanCodeLocalDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PREFERENCES_NAME_PRE: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    return-object v0

    :cond_33
    const-string v0, ""

    goto :goto_32
.end method

.method public static a(ILandroid/content/Context;)V
    .registers 5

    sput p0, Lcom/baidu/scancode/b/a;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o2o_service.preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_current_index_of_pay_type"

    sget v2, Lcom/baidu/scancode/b/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o2o_service.preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_later_server_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/baidu/scancode/datamodel/GetOTPKeyAndBfbIdResponse;Landroid/content/Context;)V
    .registers 6

    const-string v0, ""

    if-eqz p0, :cond_e

    iget-object v1, p0, Lcom/baidu/scancode/datamodel/GetOTPKeyAndBfbIdResponse;->token_info:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v0, p0, Lcom/baidu/scancode/datamodel/GetOTPKeyAndBfbIdResponse;->token_info:Ljava/lang/String;

    :cond_e
    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/android/pay/SafePay;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/scancode/a/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanCodeLocalDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedbfb ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "o2o_service.preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_otp_key"

    invoke-static {p1, v1, v2, v0}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;->more_card:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/scancode/b/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;->pay:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;

    invoke-static {v0}, Lcom/baidu/scancode/b/a;->a(Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/baidu/scancode/b/a;->a(ILandroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, ""

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "o2o_service.preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_pay_type_info"

    invoke-static {p1, v1, v2, v0}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "0"

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o2o_service.preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "more_card"

    invoke-static {p1, v0, v1, p0}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/android/pay/SafePay;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_37

    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    aget-object v1, v1, v0

    const-string v2, "walletotp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v0, 0x1

    :cond_37
    return v0
.end method

.method public static b(Landroid/content/Context;)J
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o2o_service.preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_later_server_time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(ILandroid/content/Context;)Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/baidu/scancode/b/a;->a(Landroid/content/Context;)Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;->pay:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;

    if-eqz v2, :cond_d

    if-gtz p0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;

    invoke-direct {v3}, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;-><init>()V

    iget-object v4, v1, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;->pay:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;

    iget-object v4, v4, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;->balance:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo$BalanceInfo;

    iget-object v4, v4, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo$BalanceInfo;->enabled:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;->enabled:Ljava/lang/String;

    iget-object v4, v1, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;->pay:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;

    iget-object v4, v4, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;->balance:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo$BalanceInfo;

    iget-object v4, v4, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo$BalanceInfo;->display_name:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;->display_name:Ljava/lang/String;

    iget-object v4, v1, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;->pay:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;

    iget-object v4, v4, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;->balance:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo$BalanceInfo;

    iget-object v4, v4, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo$BalanceInfo;->selected:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;->selected:Ljava/lang/String;

    iput-boolean v0, v3, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;->isBankCard:Z

    const-string v4, "1"

    iput-object v4, v3, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;->pay_type:Ljava/lang/String;

    if-eqz v3, :cond_3c

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v1, v1, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;->pay:Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;

    iget-object v1, v1, Lcom/baidu/scancode/datamodel/ScanCodePayStyleInfo;->easypay:[Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;

    if-eqz v1, :cond_52

    array-length v3, v1

    if-lez v3, :cond_52

    array-length v3, v1

    :goto_46
    if-ge v0, v3, :cond_52

    aget-object v4, v1, v0

    if-eqz v4, :cond_4f

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_52
    add-int/lit8 v0, p0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scancode/datamodel/ScanCodeBankInfo;

    goto :goto_e
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {p0, p1}, Lcom/baidu/scancode/a/c;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_24

    const/4 v0, 0x2

    aget-object v0, v1, v0

    :cond_24
    return-object v0
.end method

.method private static c(Ljava/lang/String;Landroid/content/Context;)I
    .registers 6

    const-string v0, ""

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {p0, p1}, Lcom/baidu/scancode/a/c;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_27

    const/4 v2, 0x7

    :try_start_21
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_28

    move-result v0

    :cond_27
    :goto_27
    return v0

    :catch_28
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o2o_service.preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_otp_key"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o2o_service.preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "more_card"

    const-string v2, "1"

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o2o_service.preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_current_index_of_pay_type"

    sget v2, Lcom/baidu/scancode/b/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/baidu/scancode/b/a;->a:I

    sget v0, Lcom/baidu/scancode/b/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o2o_service.preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_otp_key"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/baidu/scancode/b/a;->c(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, p0}, Lcom/baidu/scancode/a/c;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    if-eqz v3, :cond_60

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_60

    array-length v5, v4

    const/16 v6, 0x9

    if-ne v5, v6, :cond_60

    aget-object v5, v4, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_60

    aget-object v4, v4, v7

    const-string v5, "walletotp"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_60

    const-string v1, "\\|"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-static {p0, v2, v1}, Lcom/baidu/scancode/a/c;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fa

    invoke-static {v0, p0}, Lcom/baidu/scancode/b/a;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/baidu/scancode/b/a;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/android/pay/SafePay;->mapScancode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_fa

    const-string v1, "ScanCodeLocalDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u751f\u6210\u5408\u6cd5\u652f\u4ed8\u7801"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " syntime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/baidu/scancode/b/a;->b(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f9
    return-object v0

    :cond_fa
    const-string v0, ""

    goto :goto_f9
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/baidu/scancode/b/a;->a(Landroid/content/Context;)Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/baidu/scancode/datamodel/GetPayTypeInfoResponse;->pay_code:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public static h(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/scancode/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o2o_service.preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_otp_key"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
