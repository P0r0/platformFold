.class public Lmobisocial/omlet/overlaybar/OverlayBarService$LocalBinder;
.super Landroid/os/Binder;
.source "OverlayBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 205
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$LocalBinder;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lmobisocial/omlet/overlaybar/OverlayBarService;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$LocalBinder;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    return-object v0
.end method
