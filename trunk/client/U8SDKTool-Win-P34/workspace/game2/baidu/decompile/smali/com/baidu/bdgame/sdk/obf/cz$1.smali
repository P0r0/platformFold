.class final Lcom/baidu/bdgame/sdk/obf/cz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cz;->b(I)V
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
        "Lcom/baidu/bdgame/sdk/obf/if;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cz;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cz;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cz$1;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/if;)V
    .registers 5

    .prologue
    .line 138
    if-nez p1, :cond_8

    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$1;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/cz;->a(Lcom/baidu/bdgame/sdk/obf/cz;Ljava/lang/Object;)V

    .line 144
    :goto_7
    return-void

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$1;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->a(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$1;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->b(Lcom/baidu/bdgame/sdk/obf/cz;)V

    goto :goto_7
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 133
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/if;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cz$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/if;)V

    return-void
.end method
