.class final Lcom/vivo/sdkplugin/Utils/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/DialogUtil;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/DialogUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/g;->a:Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/g;->a:Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->a(Lcom/vivo/sdkplugin/Utils/DialogUtil;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
