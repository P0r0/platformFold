.class final Lcom/baidu/bdgame/sdk/obf/dl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dl;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/id;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dl;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dl$1;->a:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 55
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dl$1;->a(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/id;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl$1;->a:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/dl;->a(Lcom/baidu/bdgame/sdk/obf/dl;Ljava/util/List;)V

    .line 61
    return-void
.end method
