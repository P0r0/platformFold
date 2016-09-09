.class Lcom/duoku/platform/ui/DKDownloadManagerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/DKDownloadManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/DKDownloadManagerActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$1;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 680
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$1;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a(Lcom/duoku/platform/ui/DKDownloadManagerActivity;)V

    .line 681
    const/4 v0, 0x0

    return v0
.end method
