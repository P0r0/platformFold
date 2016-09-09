.class Lcom/baidu/bdgame/sdk/obf/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/gamesdk/IResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/gamesdk/IResponse",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/baidu/gamesdk/IResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/a$g;->a:Lcom/baidu/gamesdk/IResponse;

    .line 441
    return-void
.end method

.method public static a(Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/a$g;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/a$g;-><init>(Lcom/baidu/gamesdk/IResponse;)V

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$g;->a:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_9

    .line 450
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$g;->a:Lcom/baidu/gamesdk/IResponse;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 452
    :cond_9
    return-void
.end method
