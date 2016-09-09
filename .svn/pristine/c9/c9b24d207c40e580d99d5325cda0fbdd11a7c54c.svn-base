.class public Lcom/bbkmobile/iqoo/payment/alipay/ResultChecker;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_CHECK_SIGN_FAILED:I = 0x1

.field public static final RESULT_CHECK_SIGN_SUCCEED:I = 0x2

.field public static final RESULT_INVALID_PARAM:I


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/alipay/ResultChecker;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public alipayResponse(Ljava/lang/String;)Lcom/bbkmobile/iqoo/payment/model/ResultInfo;
    .registers 6

    new-instance v1, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;

    invoke-direct {v1}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->setResult_what(I)V

    :try_start_9
    const-string v0, "memo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6e

    const-string v0, "result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6e

    const-string v0, ";"

    const-string v2, "=\\{"

    invoke-static {p1, v0, v2}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->string2JSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "resultStatus"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->setRes_code(Ljava/lang/String;)V

    const-string v3, "memo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/bbkmobile/iqoo/payment/util/Constants;->getErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->setPay_msg(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6d

    const-string v2, "&"

    const-string v3, "="

    invoke-static {v0, v2, v3}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->string2JSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->setResult_what(I)V

    :cond_6a
    invoke-virtual {v1, v0}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->setPay_result(Z)V

    :cond_6d
    :goto_6d
    return-object v1

    :cond_6e
    invoke-virtual {v1, p1}, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->setPay_msg(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_71} :catch_72

    goto :goto_6d

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6d
.end method

.method public checkSign()I
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x2

    :try_start_2
    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/alipay/ResultChecker;->a:Ljava/lang/String;

    const-string v3, ";"

    const-string v4, "=\\{"

    invoke-static {v2, v3, v4}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->string2JSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_58

    const-string v3, "&sign_type="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    const-string v5, "="

    invoke-static {v2, v4, v5}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->string2JSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "sign_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sign"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCMfnZdhehnR0rxACB027OuxcO//FrIYXWPZ8Pu hVtQH3AHQkDuDdtcMPC1CE4yknnKRFv+FnplR3BGbC86j4DhYjOCB/8/DzFz9qZgOpc1JrPBV9j3 QuIM7cYVhbgMWf2x3ASaGwLlCISetun4ARDKBbwcczN7uxqKUIUHUfFpHQIDAQAB"

    invoke-static {v3, v4, v2}, Lcom/bbkmobile/iqoo/payment/util/RSASign;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_59

    move-result v1

    if-nez v1, :cond_58

    const/4 v0, 0x1

    :cond_58
    :goto_58
    return v0

    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_58
.end method

.method public checkTenPayResult(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "statusCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "pay_result=0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_28

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    :cond_27
    :goto_27
    return v0

    :catch_28
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_27
.end method
