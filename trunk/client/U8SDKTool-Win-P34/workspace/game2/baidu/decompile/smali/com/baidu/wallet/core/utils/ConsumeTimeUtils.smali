.class public Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;
    }
.end annotation


# instance fields
.field a:Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ConsumeTime"

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public finish()Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;->a:Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;->b:J

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;->a:Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;

    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;->c:Ljava/lang/String;

    return-void
.end method

.method public setTAGString(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;->b:Ljava/lang/String;

    return-void
.end method

.method public start()Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;
    .registers 5

    new-instance v0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;-><init>(Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;->a:Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils;->a:Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/wallet/core/utils/ConsumeTimeUtils$TimeResult;->a:J

    return-object p0
.end method
