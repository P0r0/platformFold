.class public final Lcom/unionpay/sdk/AgentOption;
.super Ljava/lang/Object;


# static fields
.field public static final AO_ALL:I = 0x1

.field public static final AO_None:I = 0x3

.field public static final AO_ONLY_COLLECT:I = 0x2

.field static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/unionpay/sdk/AgentOption;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Z
    .registers 3

    const/4 v0, 0x1

    sget v1, Lcom/unionpay/sdk/AgentOption;->a:I

    if-eq v1, v0, :cond_a

    sget v1, Lcom/unionpay/sdk/AgentOption;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
