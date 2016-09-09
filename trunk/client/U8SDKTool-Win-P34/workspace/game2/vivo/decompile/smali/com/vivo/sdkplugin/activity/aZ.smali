.class final Lcom/vivo/sdkplugin/activity/aZ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/aZ;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aZ;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->finish()V

    return-void
.end method
