.class final Lcom/vivo/sdkplugin/activity/bQ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bQ;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bQ;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->finish()V

    return-void
.end method
