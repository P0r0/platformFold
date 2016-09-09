.class final Lcom/vivo/sdkplugin/activity/Z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/Z;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/Z;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V

    return-void
.end method
