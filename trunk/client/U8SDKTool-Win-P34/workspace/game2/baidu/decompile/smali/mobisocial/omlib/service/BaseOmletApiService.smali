.class public abstract Lmobisocial/omlib/service/BaseOmletApiService;
.super Landroid/app/Service;
.source "BaseOmletApiService.java"

# interfaces
.implements Lmobisocial/omlib/api/OmletApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;
    }
.end annotation


# instance fields
.field protected final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 12
    new-instance v0, Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;-><init>(Lmobisocial/omlib/service/BaseOmletApiService;)V

    iput-object v0, p0, Lmobisocial/omlib/service/BaseOmletApiService;->mBinder:Landroid/os/IBinder;

    .line 15
    return-void
.end method

.method public static getApiServiceImplementation(Landroid/content/Context;)Ljava/lang/Class;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lmobisocial/omlib/service/BaseOmletApiService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    const-class v0, Lmobisocial/omlib/service/OmlibService;

    return-object v0
.end method
