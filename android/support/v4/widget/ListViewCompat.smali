.class public final Landroid/support/v4/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .registers 4
    .param p0    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    .line 37
    invoke-static {p0, p1}, Landroid/support/v4/widget/ListViewCompatKitKat;->scrollListBy(Landroid/widget/ListView;I)V

    goto :goto_d

    .line 39
    :cond_a
    invoke-static {p0, p1}, Landroid/support/v4/widget/ListViewCompatGingerbread;->scrollListBy(Landroid/widget/ListView;I)V

    :goto_d
    return-void
.end method
