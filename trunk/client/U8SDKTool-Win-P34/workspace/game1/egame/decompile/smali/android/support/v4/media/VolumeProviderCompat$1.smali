.class Landroid/support/v4/media/VolumeProviderCompat$1;
.super Ljava/lang/Object;
.source "VolumeProviderCompat.java"

# interfaces
.implements Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/VolumeProviderCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/VolumeProviderCompat;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Landroid/support/v4/media/VolumeProviderCompat$1;->this$0:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat$1;->this$0:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    .line 160
    return-void
.end method

.method public onSetVolumeTo(I)V
    .registers 3
    .param p1, "volume"    # I

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat$1;->this$0:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    .line 155
    return-void
.end method
