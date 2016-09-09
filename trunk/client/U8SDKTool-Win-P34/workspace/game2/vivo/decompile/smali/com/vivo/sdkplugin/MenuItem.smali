.class public Lcom/vivo/sdkplugin/MenuItem;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/MenuItem;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/MenuItem;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/MenuItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/MenuItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/vivo/sdkplugin/MenuItem;->c:J

    return-wide v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/MenuItem;->a:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/MenuItem;->b:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .registers 4

    iput-wide p1, p0, Lcom/vivo/sdkplugin/MenuItem;->c:J

    return-void
.end method
