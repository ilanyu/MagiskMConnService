.class public abstract Lmiui/cloud/net/XAutoAdaptProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;
    }
.end annotation


# static fields
.field protected static final a:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    sget-object v1, Lmiui/cloud/net/a;->a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmiui/cloud/net/c;->a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmiui/cloud/net/f;->a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmiui/cloud/net/b;->a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lmiui/cloud/net/XAutoAdaptProcessor;->a:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
