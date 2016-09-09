.class public Lcom/baidu/bdgame/sdk/obf/hp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/bdgame/sdk/obf/ho;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/hp;->d:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 29
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/hp;->d:I

    .line 30
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ho;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hp;->f:Lcom/baidu/bdgame/sdk/obf/ho;

    .line 46
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hp;->e:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/hp;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/baidu/bdgame/sdk/obf/ho;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/hp;->f:Lcom/baidu/bdgame/sdk/obf/ho;

    return-object v0
.end method
