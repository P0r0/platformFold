.class final Lcom/vivo/sdkplugin/activity/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
