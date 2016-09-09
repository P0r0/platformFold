.class public Lcom/vivo/upgrade/utils/ImeiUtis;
.super Ljava/lang/Object;
.source "ImeiUtis.java"


# static fields
.field private static final IS_CDMA_DEVICE:Z

.field private static MTK6589_PLATFORM:Ljava/lang/String; = null

.field private static MTK_PLATFORM:Ljava/lang/String; = null

.field private static PLATFORM_INFO:Ljava/lang/String; = null

.field private static PLATFORM_INFO2:Ljava/lang/String; = null

.field private static PLATFORM_TAG:Ljava/lang/String; = null

.field private static PLATFORM_TAG2:Ljava/lang/String; = null

.field private static PRODUCT_TAG:Ljava/lang/String; = null

.field private static QCOM_PLATFORM:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Upgrade.ImeiUtils"

.field private static isMTK6589:Z

.field private static isMtk:Z

.field private static isMulSimCard:Z

.field private static isQcom:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 17
    sput-object v7, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_INFO:Ljava/lang/String;

    .line 18
    const-string v6, "ro.vivo.product.solution"

    sput-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_TAG:Ljava/lang/String;

    .line 20
    sput-object v7, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_INFO2:Ljava/lang/String;

    .line 21
    const-string v6, "ro.vivo.product.platform"

    sput-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_TAG2:Ljava/lang/String;

    .line 23
    const-string v6, "ro.product.model.bbk"

    sput-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->PRODUCT_TAG:Ljava/lang/String;

    .line 25
    const-string v6, "QCOM"

    sput-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->QCOM_PLATFORM:Ljava/lang/String;

    .line 26
    const-string v6, "MTK"

    sput-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->MTK_PLATFORM:Ljava/lang/String;

    .line 27
    const-string v6, "MTK6589"

    sput-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->MTK6589_PLATFORM:Ljava/lang/String;

    .line 29
    sput-boolean v8, Lcom/vivo/upgrade/utils/ImeiUtis;->isMtk:Z

    .line 30
    sput-boolean v8, Lcom/vivo/upgrade/utils/ImeiUtis;->isQcom:Z

    .line 31
    sput-boolean v8, Lcom/vivo/upgrade/utils/ImeiUtis;->isMTK6589:Z

    .line 33
    sput-boolean v8, Lcom/vivo/upgrade/utils/ImeiUtis;->isMulSimCard:Z

    .line 38
    const-string v6, "ro.vivo.op.entry"

    const-string v7, "no"

    invoke-static {v6, v7}, Lcom/vivo/upgrade/utils/Reflact;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CTCC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    sput-boolean v6, Lcom/vivo/upgrade/utils/ImeiUtis;->IS_CDMA_DEVICE:Z

    .line 175
    sget-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/vivo/upgrade/utils/Reflact;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_INFO:Ljava/lang/String;

    .line 176
    sget-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_TAG2:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/vivo/upgrade/utils/Reflact;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_INFO2:Ljava/lang/String;

    .line 177
    sget-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->QCOM_PLATFORM:Ljava/lang/String;

    sget-object v7, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_INFO:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/vivo/upgrade/utils/ImeiUtis;->isQcom:Z

    .line 178
    sget-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->MTK_PLATFORM:Ljava/lang/String;

    sget-object v7, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_INFO:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/vivo/upgrade/utils/ImeiUtis;->isMtk:Z

    .line 179
    sget-object v6, Lcom/vivo/upgrade/utils/ImeiUtis;->MTK6589_PLATFORM:Ljava/lang/String;

    sget-object v7, Lcom/vivo/upgrade/utils/ImeiUtis;->PLATFORM_INFO2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/vivo/upgrade/utils/ImeiUtis;->isMTK6589:Z

    .line 181
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_12a

    .line 183
    sget-boolean v6, Lcom/vivo/upgrade/utils/ImeiUtis;->isMtk:Z

    if-eqz v6, :cond_d5

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 187
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_74
    const-string v6, "com.mediatek.common.featureoption.FeatureOption"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 189
    const-string v6, "MTK_GEMINI_SUPPORT"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 190
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/vivo/upgrade/utils/ImeiUtis;->isMulSimCard:Z

    .line 193
    const-string v6, "MTK_VT3G324M_SUPPORT"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 194
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_98} :catch_bb

    .line 222
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v1, "e":Ljava/lang/Exception;
    :cond_98
    :goto_98
    const-string v6, "Upgrade.ImeiUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isMtk "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/vivo/upgrade/utils/ImeiUtis;->isMtk:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isMulSimCard "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/vivo/upgrade/utils/ImeiUtis;->isMulSimCard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :catch_bb
    move-exception v1

    .line 197
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "Upgrade.ImeiUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 200
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_d5
    sget-boolean v6, Lcom/vivo/upgrade/utils/ImeiUtis;->isQcom:Z

    if-eqz v6, :cond_98

    .line 201
    sput-boolean v8, Lcom/vivo/upgrade/utils/ImeiUtis;->isMulSimCard:Z

    .line 203
    :try_start_db
    const-string v6, "android.telephony.MSimTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 204
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 205
    .local v5, "method1":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_98

    .line 206
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "inst":Ljava/lang/Object;
    const-string v6, "isMultiSimEnabled"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 208
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_98

    .line 209
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sput-boolean v6, Lcom/vivo/upgrade/utils/ImeiUtis;->isMulSimCard:Z
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_10e} :catch_10f

    goto :goto_98

    .line 212
    .end local v3    # "inst":Ljava/lang/Object;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "method1":Ljava/lang/reflect/Method;
    :catch_10f
    move-exception v1

    .line 213
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "Upgrade.ImeiUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception qcom error"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_98

    .line 219
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_12a
    invoke-static {}, Lcom/vivo/upgrade/utils/ImeiUtis;->isMultiSimEnabled()Z

    move-result v6

    sput-boolean v6, Lcom/vivo/upgrade/utils/ImeiUtis;->isMulSimCard:Z

    goto/16 :goto_98
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceIdOfMtk(I)Ljava/lang/String;
    .registers 11
    .param p0, "slot"    # I

    .prologue
    .line 75
    const-string v2, ""

    .line 76
    .local v2, "deviceId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    const-string v6, "com.mediatek.telephony.TelephonyManagerEx"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 79
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 80
    .local v5, "method1":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_3e

    .line 81
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 82
    .local v3, "inst":Ljava/lang/Object;
    const-string v6, "getDeviceId"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 83
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_3e

    .line 84
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_3f

    .line 90
    .end local v3    # "inst":Ljava/lang/Object;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "method1":Ljava/lang/reflect/Method;
    :cond_3e
    :goto_3e
    return-object v2

    .line 87
    :catch_3f
    move-exception v6

    goto :goto_3e
.end method

.method private static getDeviceIdOfQcom(I)Ljava/lang/String;
    .registers 11
    .param p0, "slot"    # I

    .prologue
    .line 95
    const-string v2, ""

    .line 96
    .local v2, "deviceId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 99
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    const-string v6, "android.telephony.MSimTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 100
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 101
    .local v5, "method1":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_3e

    .line 102
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 103
    .local v3, "inst":Ljava/lang/Object;
    const-string v6, "getDeviceId"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 104
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_3e

    .line 105
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_3f

    .line 111
    .end local v3    # "inst":Ljava/lang/Object;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "method1":Ljava/lang/reflect/Method;
    :cond_3e
    :goto_3e
    return-object v2

    .line 108
    :catch_3f
    move-exception v6

    goto :goto_3e
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 116
    .line 117
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 119
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v1

    .line 120
    .local v1, "spManager":Lcom/vivo/upgrade/utils/SharePreferenceManager;
    const-string v3, "com.vivo.upgrade.spkey.PHONE_IMEI"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 124
    sget-boolean v3, Lcom/vivo/upgrade/utils/ImeiUtis;->IS_CDMA_DEVICE:Z

    if-eqz v3, :cond_36

    .line 125
    invoke-static {}, Lcom/vivo/upgrade/utils/ImeiUtis;->getImei1OfCdma()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_23
    :goto_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 136
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_2d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 140
    const-string v0, "123456789012345"

    .line 147
    :cond_35
    :goto_35
    return-object v0

    .line 126
    :cond_36
    sget-boolean v3, Lcom/vivo/upgrade/utils/ImeiUtis;->isMulSimCard:Z

    if-eqz v3, :cond_23

    .line 128
    sget-boolean v3, Lcom/vivo/upgrade/utils/ImeiUtis;->isMtk:Z

    if-eqz v3, :cond_43

    .line 129
    invoke-static {v5}, Lcom/vivo/upgrade/utils/ImeiUtis;->getDeviceIdOfMtk(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    goto :goto_23

    .line 131
    :cond_43
    invoke-static {v5}, Lcom/vivo/upgrade/utils/ImeiUtis;->getDeviceIdOfQcom(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 142
    :cond_48
    const-string v3, "com.vivo.upgrade.spkey.PHONE_IMEI"

    invoke-virtual {v1, v3, v0}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method private static getImei1OfCdma()Ljava/lang/String;
    .registers 11

    .prologue
    .line 44
    :try_start_0
    const-string v7, "android.os.ServiceManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getService"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    .line 46
    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    .line 45
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 47
    .local v3, "getService":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 48
    const-string v10, "phone"

    aput-object v10, v8, v9

    .line 47
    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 50
    .local v5, "remoteService":Ljava/lang/Object;
    const-string v7, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 51
    .local v6, "stub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    .line 52
    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v9

    .line 51
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 53
    .local v1, "asInterface":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 54
    .local v4, "iTelephony":Ljava/lang/Object;
    if-eqz v4, :cond_5d

    .line 55
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getImei"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 56
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 55
    check-cast v7, Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_58} :catch_59
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_58} :catch_60
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_58} :catch_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_58} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_58} :catch_6f

    .line 70
    .end local v1    # "asInterface":Ljava/lang/reflect/Method;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    .end local v4    # "iTelephony":Ljava/lang/Object;
    .end local v5    # "remoteService":Ljava/lang/Object;
    .end local v6    # "stub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_58
    return-object v7

    .line 58
    :catch_59
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 70
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5d
    :goto_5d
    const-string v7, ""

    goto :goto_58

    .line 60
    :catch_60
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_5d

    .line 62
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_65
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5d

    .line 64
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_6a
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5d

    .line 66
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_6f
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5d
.end method

.method private static isMultiSimEnabled()Z
    .registers 7

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "isMulSimCard":Z
    const/4 v0, 0x0

    .line 157
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-string v5, "android.telephony.TelephonyManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 158
    const-string v5, "getDefault"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 159
    .local v4, "method1":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_33

    .line 160
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 161
    .local v1, "inst":Ljava/lang/Object;
    const-string v5, "isMultiSimEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 162
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_33

    .line 163
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_34

    move-result v2

    .line 171
    .end local v1    # "inst":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "method1":Ljava/lang/reflect/Method;
    :cond_33
    :goto_33
    return v2

    .line 168
    :catch_34
    move-exception v5

    goto :goto_33
.end method
