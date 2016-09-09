.class public final enum Lcom/baidu/sapi2/utils/enums/SocialType;
.super Ljava/lang/Enum;
.source "SocialType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/SocialType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HUAWEI:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum IQIYI:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum QQ:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum QZONE:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum RENREN:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum SINA_WEIBO_SSO:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum TENCENT_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum UNKNOWN:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum WANDA_FEIFAN:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum WEIXIN:Lcom/baidu/sapi2/utils/enums/SocialType;

.field public static final enum XIAOMI:Lcom/baidu/sapi2/utils/enums/SocialType;

.field private static final synthetic c:[Lcom/baidu/sapi2/utils/enums/SocialType;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 11
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "UNKNOWN"

    const-string v2, "\u672a\u77e5"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 15
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "RENREN"

    const-string v2, "\u4eba\u4eba"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->RENREN:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 19
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "SINA_WEIBO"

    const-string v2, "\u65b0\u6d6a\u5fae\u535a"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 23
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "SINA_WEIBO_SSO"

    const-string v2, "\u65b0\u6d6a\u5fae\u535aSSO"

    invoke-direct {v0, v1, v9, v5, v2}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->SINA_WEIBO_SSO:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 27
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "TENCENT_WEIBO"

    const-string v2, "\u817e\u8baf\u5fae\u535a"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->TENCENT_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 32
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "QZONE"

    const/4 v2, 0x5

    const/16 v3, 0xf

    const-string v4, "QQ\u7a7a\u95f4"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->QZONE:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 36
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "QQ"

    const/4 v2, 0x6

    const/16 v3, 0xf

    const-string v4, "QQ"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->QQ:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 41
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "WEIXIN"

    const/4 v2, 0x7

    const/16 v3, 0x2a

    const-string v4, "\u5fae\u4fe1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->WEIXIN:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 46
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "HUAWEI"

    const/16 v2, 0x8

    const/16 v3, 0x2d

    const-string v4, "\u534e\u4e3a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->HUAWEI:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 51
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "WANDA_FEIFAN"

    const/16 v2, 0x9

    const/16 v3, 0x2e

    const-string v4, "\u4e07\u8fbe\u98de\u51e1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->WANDA_FEIFAN:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 56
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "IQIYI"

    const/16 v2, 0xa

    const/16 v3, 0x2f

    const-string v4, "\u7231\u5947\u827a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->IQIYI:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 61
    new-instance v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    const-string v1, "XIAOMI"

    const/16 v2, 0xb

    const/16 v3, 0x31

    const-string v4, "\u5c0f\u7c73"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/utils/enums/SocialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->XIAOMI:Lcom/baidu/sapi2/utils/enums/SocialType;

    .line 6
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/SocialType;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->RENREN:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->SINA_WEIBO_SSO:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->TENCENT_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->QZONE:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->QQ:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->WEIXIN:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->HUAWEI:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->WANDA_FEIFAN:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->IQIYI:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->XIAOMI:Lcom/baidu/sapi2/utils/enums/SocialType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->c:[Lcom/baidu/sapi2/utils/enums/SocialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "type"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/baidu/sapi2/utils/enums/SocialType;->a:I

    .line 68
    iput-object p4, p0, Lcom/baidu/sapi2/utils/enums/SocialType;->b:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static getSocialType(I)Lcom/baidu/sapi2/utils/enums/SocialType;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 80
    sparse-switch p0, :sswitch_data_22

    .line 100
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/SocialType;

    :goto_5
    return-object v0

    .line 82
    :sswitch_6
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->RENREN:Lcom/baidu/sapi2/utils/enums/SocialType;

    goto :goto_5

    .line 84
    :sswitch_9
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    goto :goto_5

    .line 86
    :sswitch_c
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->TENCENT_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    goto :goto_5

    .line 88
    :sswitch_f
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->QQ:Lcom/baidu/sapi2/utils/enums/SocialType;

    goto :goto_5

    .line 90
    :sswitch_12
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->WEIXIN:Lcom/baidu/sapi2/utils/enums/SocialType;

    goto :goto_5

    .line 92
    :sswitch_15
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->HUAWEI:Lcom/baidu/sapi2/utils/enums/SocialType;

    goto :goto_5

    .line 94
    :sswitch_18
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->WANDA_FEIFAN:Lcom/baidu/sapi2/utils/enums/SocialType;

    goto :goto_5

    .line 96
    :sswitch_1b
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->IQIYI:Lcom/baidu/sapi2/utils/enums/SocialType;

    goto :goto_5

    .line 98
    :sswitch_1e
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->XIAOMI:Lcom/baidu/sapi2/utils/enums/SocialType;

    goto :goto_5

    .line 80
    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x4 -> :sswitch_c
        0xf -> :sswitch_f
        0x2a -> :sswitch_12
        0x2d -> :sswitch_15
        0x2e -> :sswitch_18
        0x2f -> :sswitch_1b
        0x31 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/SocialType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/SocialType;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/baidu/sapi2/utils/enums/SocialType;->c:[Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/SocialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/SocialType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/SocialType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/baidu/sapi2/utils/enums/SocialType;->a:I

    return v0
.end method
