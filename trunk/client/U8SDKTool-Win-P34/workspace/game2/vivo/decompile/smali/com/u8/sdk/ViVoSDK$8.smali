.class Lcom/u8/sdk/ViVoSDK$8;
.super Ljava/lang/Object;
.source "ViVoSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ViVoSDK;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ViVoSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ViVoSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ViVoSDK$8;->this$0:Lcom/u8/sdk/ViVoSDK;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 377
    return-void
.end method
