.class final Landroid/content/pm/ActivityInfo$FlymeInjector;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyFromActivityInfo(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "src"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 878
    invoke-static {p0}, Landroid/content/pm/ActivityInfo$FlymeInjector;->createFlymeActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 879
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 880
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    .line 881
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget v1, v1, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    iput v1, v0, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    .line 877
    return-void
.end method

.method static createFlymeActivityInfo(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 874
    new-instance v0, Landroid/content/ActivityInfoExt;

    invoke-direct {v0}, Landroid/content/ActivityInfoExt;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    .line 873
    return-void
.end method

.method static readFromParcel(Landroid/content/pm/ActivityInfo;Landroid/os/Parcel;)V
    .locals 4
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 891
    invoke-static {p0}, Landroid/content/pm/ActivityInfo$FlymeInjector;->createFlymeActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 892
    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 893
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    .line 894
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    .line 890
    return-void

    :cond_0
    move v0, v2

    .line 892
    goto :goto_0

    :cond_1
    move v1, v2

    .line 893
    goto :goto_1
.end method

.method static writeToParcel(Landroid/content/pm/ActivityInfo;Landroid/os/Parcel;)V
    .locals 3
    .param p0, "src"    # Landroid/content/pm/ActivityInfo;
    .param p1, "dst"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 885
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v0, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v0, v0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget v0, v0, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    return-void

    :cond_0
    move v0, v2

    .line 885
    goto :goto_0

    :cond_1
    move v1, v2

    .line 886
    goto :goto_1
.end method
