.class final Lcom/baidu/bdgame/sdk/obf/ej$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/hp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ms;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/bdgame/sdk/obf/ej;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/ms;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej$9;->d:Lcom/baidu/bdgame/sdk/obf/ej;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ej$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ej$9;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/ej$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$9;->a:Lcom/baidu/bdgame/sdk/obf/ms;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->dismiss()V

    .line 189
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$9;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej$9;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/mf;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$9;->d:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->b(Lcom/baidu/bdgame/sdk/obf/ej;)V

    .line 191
    return-void
.end method
