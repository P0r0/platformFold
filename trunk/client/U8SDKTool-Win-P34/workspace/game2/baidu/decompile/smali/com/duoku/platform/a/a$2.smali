.class Lcom/duoku/platform/a/a$2;
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

.field private final synthetic b:Lcom/duoku/platform/a/a$a;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/a/a;Lcom/duoku/platform/a/a$a;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    iput-object p2, p0, Lcom/duoku/platform/a/a$2;->b:Lcom/duoku/platform/a/a$a;

    iput p3, p0, Lcom/duoku/platform/a/a$2;->c:I

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 167
    iget-object v0, p0, Lcom/duoku/platform/a/a$2;->b:Lcom/duoku/platform/a/a$a;

    iget-object v0, v0, Lcom/duoku/platform/a/a$a;->c:Landroid/widget/Button;

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->isDownloadNative:Z

    if-eqz v0, :cond_b6

    .line 171
    iget-object v0, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u6dfb\u52a0\u5230\u4e0b\u8f7d\u7ba1\u7406\u5668"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/duoku/platform/b;->o()Lcom/duoku/platform/download/utils/DownloadTasks;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->d(Lcom/duoku/platform/a/a;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/duoku/platform/a/a$2;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/bean/d;

    invoke-virtual {v1}, Lcom/duoku/platform/bean/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v2}, Lcom/duoku/platform/a/a;->d(Lcom/duoku/platform/a/a;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/duoku/platform/a/a$2;->c:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/bean/d;

    invoke-virtual {v2}, Lcom/duoku/platform/bean/d;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v3}, Lcom/duoku/platform/a/a;->d(Lcom/duoku/platform/a/a;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/duoku/platform/a/a$2;->c:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duoku/platform/bean/d;

    invoke-virtual {v3}, Lcom/duoku/platform/bean/d;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v4}, Lcom/duoku/platform/a/a;->d(Lcom/duoku/platform/a/a;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/duoku/platform/a/a$2;->c:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duoku/platform/bean/d;

    invoke-virtual {v4}, Lcom/duoku/platform/bean/d;->f()Ljava/lang/String;

    move-result-object v4

    .line 176
    iget-object v5, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v5}, Lcom/duoku/platform/a/a;->d(Lcom/duoku/platform/a/a;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/duoku/platform/a/a$2;->c:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duoku/platform/bean/d;

    invoke-virtual {v5}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v6}, Lcom/duoku/platform/a/a;->d(Lcom/duoku/platform/a/a;)Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/duoku/platform/a/a$2;->c:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/duoku/platform/bean/d;

    invoke-virtual {v6}, Lcom/duoku/platform/bean/d;->a()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual/range {v0 .. v6}, Lcom/duoku/platform/download/utils/DownloadTasks;->startDownloadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_91
    iget-object v0, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->b(Lcom/duoku/platform/a/a;)I

    move-result v0

    if-nez v0, :cond_10c

    .line 185
    iget v0, p0, Lcom/duoku/platform/a/a$2;->c:I

    if-nez v0, :cond_d2

    .line 187
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "57"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_down1"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    :cond_b5
    :goto_b5
    return-void

    .line 180
    :cond_b6
    iget-object v0, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->d(Lcom/duoku/platform/a/a;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/duoku/platform/a/a$2;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duoku/platform/util/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_91

    .line 190
    :cond_d2
    iget v0, p0, Lcom/duoku/platform/a/a$2;->c:I

    if-ne v0, v8, :cond_ef

    .line 192
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "58"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_down2"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b5

    .line 195
    :cond_ef
    iget v0, p0, Lcom/duoku/platform/a/a$2;->c:I

    if-ne v0, v9, :cond_b5

    .line 197
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "59"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_down3"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b5

    .line 201
    :cond_10c
    iget-object v0, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->b(Lcom/duoku/platform/a/a;)I

    move-result v0

    if-ne v0, v8, :cond_16d

    .line 203
    iget v0, p0, Lcom/duoku/platform/a/a$2;->c:I

    if-nez v0, :cond_131

    .line 205
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "60"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_down4"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b5

    .line 208
    :cond_131
    iget v0, p0, Lcom/duoku/platform/a/a$2;->c:I

    if-ne v0, v8, :cond_14f

    .line 210
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "61"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_down5"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b5

    .line 213
    :cond_14f
    iget v0, p0, Lcom/duoku/platform/a/a$2;->c:I

    if-ne v0, v9, :cond_b5

    .line 215
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "62"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_down6"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b5

    .line 219
    :cond_16d
    iget-object v0, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v0}, Lcom/duoku/platform/a/a;->b(Lcom/duoku/platform/a/a;)I

    move-result v0

    if-ne v0, v9, :cond_b5

    .line 221
    iget v0, p0, Lcom/duoku/platform/a/a$2;->c:I

    if-nez v0, :cond_193

    .line 223
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "63"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_down7"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b5

    .line 226
    :cond_193
    iget v0, p0, Lcom/duoku/platform/a/a$2;->c:I

    if-ne v0, v8, :cond_1b1

    .line 228
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "64"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_down8"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b5

    .line 231
    :cond_1b1
    iget v0, p0, Lcom/duoku/platform/a/a$2;->c:I

    if-ne v0, v9, :cond_b5

    .line 233
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "65"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/a$2;->a:Lcom/duoku/platform/a/a;

    invoke-static {v1}, Lcom/duoku/platform/a/a;->c(Lcom/duoku/platform/a/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bd_exit_game_down9"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b5
.end method
