.class public abstract Lcom/gionee/gsp/result/GnResultCode;
.super Ljava/lang/Object;
.source "GnResultCode.java"


# static fields
.field public static final BASENUMBER:I = 0x0

.field public static final CANCEL:I

.field public static final COM_PLATFORM_SUCCESS:I

.field public static final DOWNLOAD_APP_FAILED:I

.field public static final ERRORCODE:Ljava/lang/String; = "\u8bf7\u6c42\u9519\u8bef\u7801 :"

.field public static final ERRORDESC:Ljava/lang/String; = "\u9519\u8bef\u63cf\u8ff0 :"

.field public static final NEED_TO_INSTALL:I

.field public static final NETWORK_FAILED:I

.field public static final NOT_CONNECTION:I

.field private static RESULTCODEANDDESCMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAVE_FILE_FAILED:I

.field public static final SERVER_RESULT_CODE_1:I

.field public static final UNKNOWN_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gionee/gsp/result/GnResultCode;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    .line 94
    const/4 v0, 0x0

    const-string v1, "\u6210\u529f"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnResultCode;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnResultCode;->COM_PLATFORM_SUCCESS:I

    .line 95
    const/4 v0, -0x1

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnResultCode;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnResultCode;->UNKNOWN_ERROR:I

    .line 96
    const/4 v0, -0x2

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnResultCode;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnResultCode;->NETWORK_FAILED:I

    .line 97
    const/4 v0, -0x3

    const-string v1, "\u7528\u6237\u6267\u884c\u4e86\u53d6\u6d88\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnResultCode;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnResultCode;->CANCEL:I

    .line 100
    const/4 v0, -0x4

    const-string v1, "\u68c0\u6d4b\u5230\u7f51\u7edc\u672a\u8fde\u63a5"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnResultCode;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnResultCode;->NOT_CONNECTION:I

    .line 101
    const/4 v0, -0x5

    const-string v1, "\u83b7\u53d6\u672c\u5730\u4fdd\u5b58\u5730\u5740\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnResultCode;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnResultCode;->SAVE_FILE_FAILED:I

    .line 102
    const/4 v0, -0x6

    const-string v1, "\u68c0\u6d4b\u5230\u672c\u5730\u73af\u5883\u6709\u7ec4\u4ef6\u9700\u8981\u5b89\u88c5\u6216\u8005\u5347\u7ea7"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnResultCode;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnResultCode;->NEED_TO_INSTALL:I

    .line 103
    const/4 v0, -0x7

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25:"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnResultCode;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnResultCode;->DOWNLOAD_APP_FAILED:I

    .line 110
    const/16 v0, 0x65

    const-string v1, "\u53c2\u6570\u683c\u5f0f\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/gionee/gsp/result/GnResultCode;->addResultcodeAndDescMap(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/gionee/gsp/result/GnResultCode;->SERVER_RESULT_CODE_1:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addResult(Landroid/content/Context;Lcom/gionee/gsp/data/GnBaseAd;ILjava/lang/Exception;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gnBaseAd"    # Lcom/gionee/gsp/data/GnBaseAd;
    .param p2, "resultcode"    # I
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 63
    iput p2, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    .line 65
    invoke-static {p3}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 68
    :cond_8
    invoke-static {p3}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    .line 71
    invoke-static {p3}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 75
    sget-object v0, Lcom/gionee/gsp/result/GnResultCode;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    .line 80
    :goto_1f
    instance-of v0, p3, Ljava/io/IOException;

    if-nez v0, :cond_28

    .line 81
    const-string v0, ""

    invoke-static {p0, p3, v0}, Lcom/gionee/gsp/util/GnCommonUtil;->sendErrorInfo(Landroid/content/Context;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 83
    :cond_28
    return-void

    .line 77
    :cond_29
    sget-object v0, Lcom/gionee/gsp/result/GnResultCode;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    goto :goto_1f
.end method

.method public static addResult(Lcom/gionee/gsp/data/GnBaseAd;I)V
    .registers 4
    .param p0, "gnBaseAd"    # Lcom/gionee/gsp/data/GnBaseAd;
    .param p1, "resultcode"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    .line 50
    sget-object v0, Lcom/gionee/gsp/result/GnResultCode;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static addResult(Lcom/gionee/gsp/data/GnBaseAd;ILjava/lang/String;)V
    .registers 6
    .param p0, "gnBaseAd"    # Lcom/gionee/gsp/data/GnBaseAd;
    .param p1, "resultcode"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 54
    iput p1, p0, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    .line 55
    invoke-static {p2}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 56
    sget-object v0, Lcom/gionee/gsp/result/GnResultCode;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    .line 60
    :goto_16
    return-void

    .line 58
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gionee/gsp/result/GnResultCode;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\uff0c\u5931\u8d25\u7684\u539f\u56e0\u662f\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    goto :goto_16
.end method

.method private static addResultcodeAndDescMap(ILjava/lang/String;)I
    .registers 4
    .param p0, "resultcode"    # I
    .param p1, "resultDesc"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/gionee/gsp/result/GnResultCode;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v0, p0, 0x0

    return v0
.end method

.method public static getResult(I)Ljava/lang/String;
    .registers 3
    .param p0, "resultCode"    # I

    .prologue
    .line 86
    sget-object v0, Lcom/gionee/gsp/result/GnResultCode;->RESULTCODEANDDESCMAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
