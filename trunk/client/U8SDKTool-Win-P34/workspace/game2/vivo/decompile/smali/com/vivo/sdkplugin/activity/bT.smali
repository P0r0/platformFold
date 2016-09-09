.class final Lcom/vivo/sdkplugin/activity/bT;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bT;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v3, 0x0

    const-string v0, "VivoGame.GameInfoMoreActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mHandler"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bT;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bT;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a:Lcom/vivo/sdkplugin/Utils/FooterListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bT;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    const-string v1, "\u641c\u7d22\u4e0d\u5230\u4f60\u8981\u7684\u653b\u7565"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bT;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bT;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bT;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method
