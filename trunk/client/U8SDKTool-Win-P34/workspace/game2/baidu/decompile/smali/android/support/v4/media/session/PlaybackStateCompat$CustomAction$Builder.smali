.class public final Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 683
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an action to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 687
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a name to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_1f
    if-nez p3, :cond_29

    .line 691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an icon resource id to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_29
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    .line 695
    iput-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    .line 696
    iput p3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    .line 697
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .registers 7

    .prologue
    .line 720
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    iget-object v4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat$1;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 709
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    .line 710
    return-object p0
.end method
