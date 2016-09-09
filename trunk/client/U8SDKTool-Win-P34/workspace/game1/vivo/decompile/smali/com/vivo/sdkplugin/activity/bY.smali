.class final Lcom/vivo/sdkplugin/activity/bY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bY;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bY;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->f(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bY;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->k(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bY;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bY;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)I

    move-result v1

    const/4 v2, 0x3

    sget-object v3, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_gamedetial:Lcom/huanju/data/content/raw/HjRequestFrom;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->request(IILcom/huanju/data/content/raw/HjRequestFrom;)V

    return-void
.end method
