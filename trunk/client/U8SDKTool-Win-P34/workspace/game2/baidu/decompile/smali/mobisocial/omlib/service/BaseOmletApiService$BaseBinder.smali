.class public Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;
.super Landroid/os/Binder;
.source "BaseOmletApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/BaseOmletApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/BaseOmletApiService;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/service/BaseOmletApiService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/BaseOmletApiService;

    .prologue
    .line 15
    iput-object p1, p0, Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;->this$0:Lmobisocial/omlib/service/BaseOmletApiService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lmobisocial/omlib/service/BaseOmletApiService;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;->this$0:Lmobisocial/omlib/service/BaseOmletApiService;

    return-object v0
.end method
