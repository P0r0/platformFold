.class Lcom/duoku/platform/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/a/a;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/a/a;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    iput p2, p0, Lcom/duoku/platform/a/a$1;->b:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 94
    iget-object v0, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->a(Lcom/duoku/platform/a/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 95
    iget-object v0, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->b(Lcom/duoku/platform/a/a;)I

    move-result v0

    if-nez v0, :cond_c0

    .line 97
    iget v0, p0, Lcom/duoku/platform/a/a$1;->b:I

    if-nez v0, :cond_85

    .line 99
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "48"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_icon1"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    :cond_2f
    :goto_2f
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v0, "function_code"

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->d(Lcom/duoku/platform/a/a;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/duoku/platform/a/a$1;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 153
    const-string v2, "dk_operate_url"

    iget-object v0, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->d(Lcom/duoku/platform/a/a;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/duoku/platform/a/a$1;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_72
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v2}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/duoku/platform/c/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 156
    return-void

    .line 102
    :cond_85
    iget v0, p0, Lcom/duoku/platform/a/a$1;->b:I

    if-ne v0, v1, :cond_a2

    .line 104
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "49"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_icon2"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2f

    .line 107
    :cond_a2
    iget v0, p0, Lcom/duoku/platform/a/a$1;->b:I

    if-ne v0, v2, :cond_2f

    .line 109
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "50"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_icon3c"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 113
    :cond_c0
    iget-object v0, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->b(Lcom/duoku/platform/a/a;)I

    move-result v0

    if-ne v0, v1, :cond_122

    .line 115
    iget v0, p0, Lcom/duoku/platform/a/a$1;->b:I

    if-nez v0, :cond_e6

    .line 117
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "51"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_icon4"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 120
    :cond_e6
    iget v0, p0, Lcom/duoku/platform/a/a$1;->b:I

    if-ne v0, v1, :cond_104

    .line 122
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "52"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_icon5"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 125
    :cond_104
    iget v0, p0, Lcom/duoku/platform/a/a$1;->b:I

    if-ne v0, v2, :cond_2f

    .line 127
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "53"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_icon6"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 131
    :cond_122
    iget-object v0, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->b(Lcom/duoku/platform/a/a;)I

    move-result v0

    if-ne v0, v2, :cond_2f

    .line 133
    iget v0, p0, Lcom/duoku/platform/a/a$1;->b:I

    if-nez v0, :cond_148

    .line 135
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "54"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_icon7"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 138
    :cond_148
    iget v0, p0, Lcom/duoku/platform/a/a$1;->b:I

    if-ne v0, v1, :cond_166

    .line 140
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "55"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_icon8"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 143
    :cond_166
    iget v0, p0, Lcom/duoku/platform/a/a$1;->b:I

    if-ne v0, v2, :cond_2f

    .line 145
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "56"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$1;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_icon9"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2f
.end method
