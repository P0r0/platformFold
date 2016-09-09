.class public Lcom/baidu/bdgame/sdk/obf/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
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
.field private a:Lcom/baidu/bdgame/sdk/obf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/n;->b:Z

    .line 22
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/n;->a:Lcom/baidu/bdgame/sdk/obf/o;

    .line 23
    return-void
.end method

.method public static a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/n;-><init>(Lcom/baidu/bdgame/sdk/obf/o;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/n;->b:Z

    .line 27
    return-object p0
.end method

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
    .line 33
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/n;->b:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/n;->a:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_d

    .line 35
    :try_start_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/n;->a:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    .line 40
    :cond_d
    :goto_d
    return-void

    .line 36
    :catch_e
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
