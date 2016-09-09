.class Lmobisocial/omlib/client/ClientAuthUtils$10$1;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils$10;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils$10;

    .prologue
    .line 565
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$1;->this$0:Lmobisocial/omlib/client/ClientAuthUtils$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 569
    packed-switch p2, :pswitch_data_12

    .line 590
    :goto_3
    return-void

    .line 571
    :pswitch_4
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$1;->this$0:Lmobisocial/omlib/client/ClientAuthUtils$10;

    iget-object v0, v0, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$apiManager:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlib/client/ClientAuthUtils$10$1$1;

    invoke-direct {v1, p0}, Lmobisocial/omlib/client/ClientAuthUtils$10$1$1;-><init>(Lmobisocial/omlib/client/ClientAuthUtils$10$1;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    goto :goto_3

    .line 569
    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method
