.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;
.super Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextUtilsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextUtilsCompatJellybeanMr1Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 2
    .param p1    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 112
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
