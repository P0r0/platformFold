.class final Lcom/baidu/bdgame/sdk/obf/bn$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bn;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bn;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bn;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bn$7;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn$7;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->a(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn$7;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->d(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method
