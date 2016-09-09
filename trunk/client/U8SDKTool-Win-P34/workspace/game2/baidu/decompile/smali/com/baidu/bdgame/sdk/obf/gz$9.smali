.class final Lcom/baidu/bdgame/sdk/obf/gz$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gz;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gz;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gz;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz$9;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz$9;->a:Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gz;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a()V

    .line 143
    const/4 v0, 0x1

    return v0
.end method
