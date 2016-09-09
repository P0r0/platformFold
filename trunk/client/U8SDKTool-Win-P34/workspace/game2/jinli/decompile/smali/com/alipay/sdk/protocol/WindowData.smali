.class public abstract Lcom/alipay/sdk/protocol/WindowData;
.super Lcom/alipay/sdk/protocol/FrameData;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = -0xa


# instance fields
.field private m:Z

.field private n:Z

.field private o:I


# direct methods
.method protected constructor <init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/protocol/FrameData;-><init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V

    .line 43
    iput-boolean v1, p0, Lcom/alipay/sdk/protocol/WindowData;->n:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/sdk/protocol/WindowData;->o:I

    .line 48
    iput-boolean v1, p0, Lcom/alipay/sdk/protocol/WindowData;->m:Z

    .line 49
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/alipay/sdk/protocol/WindowData;->m:Z

    .line 65
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/alipay/sdk/protocol/WindowData;->n:Z

    .line 73
    return-void
.end method

.method public abstract f()Z
.end method

.method public abstract g()I
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public j()V
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/alipay/sdk/protocol/WindowData;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/sdk/protocol/WindowData;->o:I

    .line 53
    return-void
.end method

.method public k()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/alipay/sdk/protocol/WindowData;->o:I

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/WindowData;->m:Z

    return v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/WindowData;->n:Z

    return v0
.end method
