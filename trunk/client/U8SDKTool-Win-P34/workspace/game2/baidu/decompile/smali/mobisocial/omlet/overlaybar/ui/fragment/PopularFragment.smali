.class public Lmobisocial/omlet/overlaybar/ui/fragment/PopularFragment;
.super Landroid/app/Fragment;
.source "PopularFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/PopularFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "omp_fragment_popular"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
