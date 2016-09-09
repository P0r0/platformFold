.class Lmobisocial/omlib/client/ClientAuthUtils$10$2;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils$10;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils$10;

.field final synthetic val$dialogClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils$10;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils$10;

    .prologue
    .line 592
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$2;->this$0:Lmobisocial/omlib/client/ClientAuthUtils$10;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$2;->val$dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 596
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$2;->this$0:Lmobisocial/omlib/client/ClientAuthUtils$10;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 597
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$2;->this$0:Lmobisocial/omlib/client/ClientAuthUtils$10;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$activity:Landroid/app/Activity;

    const-string v2, "oml_logout_confirm"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    iget-object v3, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$2;->val$dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    iget-object v3, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$2;->val$dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 598
    return-void
.end method
